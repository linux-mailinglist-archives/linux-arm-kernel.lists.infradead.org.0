Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA113D3F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s3GETGgX4bApkknvMJo29l1MW9LVYOpsVAm30hiTEQ=; b=Vbwsa7kMKPFck4
	ifCoY29K51sTm67Y2Zc6VTn6M4ta81b7OoBXnMLz6xVUiXzZxi80lJuhNIxtWX8C6e4rPhRgm5lFk
	J2vh7pzfS8qXFrLHw/Vg/tbMED7SROn5RIuwV8/AnS3abJrC+jAeUE49Z9NttGN1uWbIJgyyVWx9H
	HejSk1JJzWkKiFqWczgX4GBdtIITklEzL0T+VpUOBj9wP8LcScu8N6hpkO1+lz65/gOpBacF02yAb
	ADx3P31UWTCmb7MpHCdvZRtfy0zG/qx7dVDQQM94uSv4rNwB7bRZP5jKmDJPX95+YlQAnwzJZ8f0M
	RC8WGkLjK+OUZo/PbhIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakUZ-00046i-IV; Tue, 11 Jun 2019 17:23:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakUK-000466-Ed
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:23:13 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BBA097573D;
 Tue, 11 Jun 2019 17:23:05 +0000 (UTC)
Received: from ovpn-112-53.rdu2.redhat.com (ovpn-112-53.rdu2.redhat.com
 [10.10.112.53])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59CCA5DE86;
 Tue, 11 Jun 2019 17:22:59 +0000 (UTC)
Message-ID: <153fafb91267147cf22e2bf102dd822933ec823a.camel@redhat.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
From: Dan Williams <dcbw@redhat.com>
To: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
Date: Tue, 11 Jun 2019 12:22:58 -0500
In-Reply-To: <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
References: <380a6185-7ad1-6be0-060b-e6e5d4126917@linaro.org>
 <a94676381a5ca662c848f7a725562f721c43ce76.camel@sipsolutions.net>
 <CAK8P3a0kV-i7BJJ2X6C=5n65rSGfo8fUiC4J_G-+M8EctYKbkg@mail.gmail.com>
 <fc0d08912bc10ad089eb74034726308375279130.camel@redhat.com>
 <36bca57c999f611353fd9741c55bb2a7@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 11 Jun 2019 17:23:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_102312_513474_3CE7DF10 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 David Miller <davem@davemloft.net>, linux-arm-msm@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Networking <netdev@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>, Johannes Berg <johannes@sipsolutions.net>,
 linux-soc@vger.kernel.org, abhishek.esse@gmail.com, cpratapa@codeaurora.org,
 Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-06-11 at 10:52 -0600, Subash Abhinov Kasiviswanathan
wrote:
> > The general plan (and I believe Daniele Palmas was working on it)
> > was
> > to eventually make qmi_wwan use rmnet rather than its internal
> > sysfs-
> > based implementation. qmi_wwan and ipa are at essentially the same
> > level and both could utilize rmnet on top.
> > 
> > *That's* what I'd like to see. I don't want to see two different
> > ways
> > to get QMAP packets to modem firmware from two different drivers
> > that
> > really could use the same code.
> > 
> > Dan
> 
> qmi_wwan is based on USB and is very different from the IPA
> interconnect
> though. AFAIK, they do not have much in common (apart from sending &
> receiving MAP packets from hardware).

That is correct, they are very different drivers but as you state they
send and receive MAP packets with the other end via some closer-to-
hardware protocol (USB or GSI?) than QMAP.

rmnet should handle muxing the QMAP, QoS, and aggregation and pass the
resulting packet to the lower layer. That lower layer could be IPA or
qmi_wwan, which in turn passes that QMAP packet to USB or GSI or
whatever. This is typically how Linux handles clean abstractions
between different protocol layers in drivers.

Similar to some WiFi drivers (drivers/net/wireless/marvell/libertas for
example) where the same firmware interface can be accessed via PCI,
SDIO, USB, SPI, etc. The bus-specific code is self-contained and does
not creep into the upper more generic parts.

Dan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
