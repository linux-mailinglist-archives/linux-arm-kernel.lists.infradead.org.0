Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376C61D7CA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A8jgYyapDPBlUGUyK/Nq2Yl++aYE405/T5vMrcPzxk=; b=K7z5MojwG0LN/z
	cJhJ+S5TQxJ5BBTTqzLtaDF3I7ZhnYHebz011YbjlpCRb655JjAbO4ivMya/XdpPnfth1sEDt5IVW
	cDNf8ogknGE5OzXHrKPDn5SY5UI50wPdoKhCGoQlQqS48FhR0JNMvI5Z/Mtq2+VMBhRqUaXKBJSPz
	LhFl3yfZFGbe0uQkx25fIX+qG1w6q0FxpXZFyqJ0hxoh7u0OcXNrWVCqhbpe9i4UBdEDJsgNBMJ7k
	6TamBa6CH95FmvZxXk+vyhCBjybI9OnsXGDBaUxfh/38G5uj0oCvvqBn9iwTgdJ3D/HlsAkp+jgDS
	qUEFjqulv1mdWt4CWbTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahYZ-0007aa-2a; Mon, 18 May 2020 15:19:55 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahYQ-0007Zl-64
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:19:47 +0000
Received: (qmail 17480 invoked by uid 1000); 18 May 2020 11:19:40 -0400
Date: Mon, 18 May 2020 11:19:40 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Qais Yousef <qais.yousef@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] usb/ohci-platform: Fix a warning when hibernating
Message-ID: <20200518151940.GC15479@rowland.harvard.edu>
References: <20200424134800.4629-1-qais.yousef@arm.com>
 <Pine.LNX.4.44L0.2004281459240.1555-100000@netrider.rowland.org>
 <20200518145748.puvxkcmyrxc7eqt7@e107158-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518145748.puvxkcmyrxc7eqt7@e107158-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_081946_371963_FF5C6BD3 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 03:57:49PM +0100, Qais Yousef wrote:
> > For both this patch and the 3/3 patch (ehci-platform):
> > 
> > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> Thanks Alan. Did this make it through to any tree? I don't see it on next, nor
> on Linus. But it could be queued somewhere else.
> 
> I have sent v2 to patch 2 (xhci) as a reply, so hopefully it wasn't missed.
> I can resend the whole series if necessary.

Greg, what happened to this series?  Did it just fall through the 
cracks?

Alan Stern

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
