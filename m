Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70C21A81CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URZUXvJB+l3KT2B28ijoVU5AaMAg0jyfAWKvfYzYjgM=; b=h0WhgoE5JIgAya
	zKFAbBmRXHFRBpH9VF0rzbQ/QZ4cMaQpatpsj3O8k63cYbWfD678WyPcWE4YBSBl9MvN7i+1P3PmO
	rQNIPBuLm56azqlbXYWGYLbd3bAQaXaiu0DXns2aVnTDJdVcc+tUqxLpr+w3ACjo0u6Epm3tUAeno
	tOB7U38DDxJLKzBGgp3FUVuy+o2PvGNpSSL3ZdfQ9vbrBHX9ZkIjtOJ2uotNJ8043TS7PxsWSpYWs
	INrLvygeJEhqwvkyq6jC84QPqxsdWZ+DxoxEE70FrqVP7NbvEz+XZ5NkX8HBF4FcCbgrvFa0xRJdO
	0TuHM+95wpayTQRi6ywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONHU-0001UY-RZ; Tue, 14 Apr 2020 15:15:20 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONHK-0000tw-RD
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Wb8f39hCjGcYV8+AHNSAescCyaLfOVyVKTEaqlWfHFA=; b=rXukUfJulQmi7iSIMYWiAq9QR6
 JXRXBujHbPtK1TQRqgGBlXbmwkIa5/8xprYf1whWGTnGar8OAbVX+Qel6l8H0iYPf4kpQGsFnCxYo
 F0NYB3fyVHQtiPMsP1pPBLoC+PP88zvzGx82OwcsQEXCaZWQT+LEw/Tpz5fT9Fv2a7ho=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jONH8-002fp9-VA; Tue, 14 Apr 2020 17:14:58 +0200
Date: Tue, 14 Apr 2020 17:14:58 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Christophe ROULLIER <christophe.roullier@st.com>
Subject: Re: [PATCHv2 1/1] net: ethernet: stmmac: simplify phy modes
 management for stm32
Message-ID: <20200414151458.GA637127@lunn.ch>
References: <20200316090907.18488-1-christophe.roullier@st.com>
 <cb0a5dd3-02da-7d60-7069-a8ee080ad239@st.com>
 <ecbfd26c-8dcb-3763-c1aa-ccc4c110aefa@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ecbfd26c-8dcb-3763-c1aa-ccc4c110aefa@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_081510_925014_3A70CF1B 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Peppe CAVALLARO <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:10:26PM +0000, Christophe ROULLIER wrote:
> Hi,
> 
> Gentle reminder

Hi Christophe

You are more likely to have success if you repost.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
