Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B82C8379C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WsAtFpMOuC10kIl6sgi5lQVS8jf0RGPHgkTwCWo+VRI=; b=u4U898H1ydua2m
	hx1UYOYy9xGXzfi92keEHWd+EwuWq1JFT/scChAGUWMMJIU6tJGtiJh8OUfwOBJ+AAPURFNXIlSdO
	koOogUvQe/Simt3HX4H+qEsMbn0LrGMp16r7Dpjy4CK6WE5+fbrMQ6VRCucyPCw1CXxTM9wBmzeiq
	jjghXL9cZrLhjwMLA0Ud+aWDX+uTRwUIb+duKRtG0dDqz/ehvIY7bzqV573jboWkCcB20MtGQz4s5
	YjPnnkZxyUeSTQa8hI6Fo5USJKCB92GArjCEShnveV56HvrFSer+h8SZxIvDe1cNCG/8PjoM1mXlN
	UE4rrfoC68S+tt6bpKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2s8-0003vY-Br; Tue, 06 Aug 2019 17:03:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2ru-0003pB-F7
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:03:29 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56B2420717;
 Tue,  6 Aug 2019 17:03:25 +0000 (UTC)
Date: Tue, 6 Aug 2019 13:03:23 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: [PATCH v3] tracing: Function stack size and its name mismatch
 in arm64
Message-ID: <20190806130323.7075c3da@gandalf.local.home>
In-Reply-To: <20190806123455.487ac02b@gandalf.local.home>
References: <20190802094103.163576-1-jiping.ma2@windriver.com>
 <20190802112259.0530a648@gandalf.local.home>
 <20190802120920.3b1f4351@gandalf.local.home>
 <20190802121124.6b41f26a@gandalf.local.home>
 <20190806154811.GB39951@google.com>
 <20190806123455.487ac02b@gandalf.local.home>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_100326_598630_27480815 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jiping Ma <jiping.ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019 12:34:55 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> Here's the best way to explain this. The code is using the stack trace
> to figure out which function is the stack hog. Or perhaps a serious of

 Why so serious? ....  s/serious/series/

-- Steve

> stack hogs. On x86, a call stores the return address as it calls the
> next function. Then that function allocates its stack frame for its
> local variables and saving of registers.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
