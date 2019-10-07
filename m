Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0B9CE3E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBJbG6mPHTZqH28Zrz2KyfZ8lK+vHic2kObi86OUYyQ=; b=dZxvwyqrsAU8G+
	CX/snprLwecRM232UHqWHySY+oQqPKsN8wi6hDFB8jgPI7BBewaJPXHpFRWYG2Lc3Z8VkV+z/O+3u
	ipzLsKf8jCLzXM4IN0bDK3lptfB0iGzw9sZw4696j62yTgTSMqvg4hMBxnCdGXsvQKXK8GajxJgQG
	Dqgi4XA8N9NEkNrnbOEBJF4+H2q+78pqZaMKc/UCs6D/BUznXSbltTX2SfeQsedw6hUO1ZUzJTq1S
	ZqZoY7ApVPNKL0smL5TSya8raXqlRGNLPEDdZdK1PGdOa068YMPH8SA6knwWyzRSqJiRG3aRbmSQt
	oLaKYWoB0k3TELTOCD4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTDx-00069B-7P; Mon, 07 Oct 2019 13:38:53 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTDq-00068S-Hh
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:38:48 +0000
Received: by mail-ed1-x541.google.com with SMTP id y91so12436172ede.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BogXmgVnKqJ+AQ/JaMHMUj54c+Ae56aiHU6T/FwepGs=;
 b=g52E3LKX6HzncFVPxZhtjKw6pzGAaTXm9pWBf1tyC/3EvHOGfeYSjJC/9vSg9xxmfa
 r3uKIl8xFPHHEHiFDi6fcw7E0y07LBlcfMssl3B7vfFWz507YOGAIidkMreErohT20Ix
 MUdABIzGLoCRcGgZkucj7jox/H/qzcDKcbDwzcy4pOfMlOosuf6LMx7acjxldQOiPSFL
 bE+FvjHpt7Ln2cVW19G/Udu+7RyUjF1WdQZ6CF6/6XIdKd0CDwSippukcvLTaHdJcvaV
 zeYRDN10gAPnSErN1fDAq4E88/n3O7YNSnJrJU+85Pw0eGbDz4tLhDCbZx40a/6L4oPU
 vaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BogXmgVnKqJ+AQ/JaMHMUj54c+Ae56aiHU6T/FwepGs=;
 b=L4R+X41QupsY5RLe9qJVw0/qWZ9O1Emhu6NXes7n+DOQq9iLjN7mFcPLD+o8CVDYhw
 Yh9VJFriKUp4KiH9ld3dZiU+A7MPQqPthYAyDra8cuNnGRgRCo4ZN149PKgKgnbNcy5n
 qZm9vAOanEV/IG2u4PEvGYcys9LZOq3xRo4i87Tl0dTPfS31wGiRGNUURSn4d0I7UUvJ
 5fXyvVqFnhC8dSsRnoba4QMFo1SOPueK9DjEBrTobnHG/ZbIz1ZiAcWne/qwNVY39WVG
 wlspj8VGyq4PIUWP32P1BYVNZdnAguTbiak/QATdTNElkdXo5/5PGojfTC50uA/d3xEA
 Aq0A==
X-Gm-Message-State: APjAAAXxZZm4fwoeF2qjNgYSCvpnLt5S+pHRLlxzgvDw9K4O0mLlsNnm
 2ev9FYioTTSPZqQTKHero9fWtKWW4EBOl73M9ys=
X-Google-Smtp-Source: APXvYqwYkVkAMrD9bm9pPuHaU98To0XXlkK7s5HbAS2iqjb1se9dDWzI/lBmBgrEvZmI5h4RHnsiv+YVuiBgR4hMKbU=
X-Received: by 2002:a17:907:211c:: with SMTP id
 qn28mr24238258ejb.244.1570455524911; 
 Mon, 07 Oct 2019 06:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191007124607.20618-1-igor.opaniuk@gmail.com>
 <20191007124607.20618-3-igor.opaniuk@gmail.com>
 <CAOMZO5B-XWxiu3iqc85UZT0c5WTHBx9on8x1Za_dS7Gj7h1K2w@mail.gmail.com>
In-Reply-To: <CAOMZO5B-XWxiu3iqc85UZT0c5WTHBx9on8x1Za_dS7Gj7h1K2w@mail.gmail.com>
From: Igor Opaniuk <igor.opaniuk@gmail.com>
Date: Mon, 7 Oct 2019 16:38:33 +0300
Message-ID: <CAByghJZBy2gU_98aM++YANDAvvY_Mtbow4fvzYp=Fd+mzJTTuQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 3/3] usb: phy: mxs: optimize disconnect line
 condition
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_063846_610021_8ED4641D 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, USB list <linux-usb@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEkgRmFiaW8sCgpPbiBNb24sIE9jdCA3LCAyMDE5IGF0IDM6NTEgUE0gRmFiaW8gRXN0ZXZhbSA8
ZmVzdGV2YW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpIElnb3IsCj4KPiBPbiBNb24sIE9jdCA3
LCAyMDE5IGF0IDk6NDcgQU0gSWdvciBPcGFuaXVrIDxpZ29yLm9wYW5pdWtAZ21haWwuY29tPiB3
cm90ZToKPiA+Cj4gPiBGcm9tOiBJZ29yIE9wYW5pdWsgPGlnb3Iub3Bhbml1a0B0b3JhZGV4LmNv
bT4KPiA+Cj4gPiBXZSBvbmx5IGhhdmUgYmVsb3cgY2FzZXMgdG8gZGlzY29ubmVjdCBsaW5lIHdo
ZW4gc3VzcGVuZDoKPiA+IDEuIERldmljZSBtb2RlIHdpdGhvdXQgY29ubmVjdGlvbiB0byBhbnkg
aG9zdC9jaGFyZ2VyKG5vIHZidXMpLgo+ID4gMi4gRGV2aWNlIG1vZGUgY29ubmVjdCB0byBhIGNo
YXJnZXIsIHVzYiBzdXNwZW5kIHdoZW4KPiA+IHN5c3RlbSBpcyBlbnRlcmluZyBzdXNwZW5kLgo+
ID4KPiA+IFRoaXMgcGF0Y2ggY2FuIGZpeCBjYXNlcywgd2hlbiB1c2IgcGh5IHdyb25nbHkgZG9l
cyBkaXNjb25uZWN0Cj4gPiBsaW5lIGluIGNhc2UgdXNiIGhvc3QgZW50ZXJzIHN1c3BlbmQgYnV0
IHZidXMgaXMgb2ZmLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IExpIEp1biA8anVuLmxpQG54cC5j
b20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBJZ29yIE9wYW5pdWsgPGlnb3Iub3Bhbml1a0B0b3JhZGV4
LmNvbT4KPgo+IFdobyBpcyB0aGUgb3JpZ2luYWwgYXV0aG9yIG9mIHRoaXMgcGF0Y2gsIGlzIGl0
IHlvdSBvciBMaSBKdW4/Cj4KPiBJZiBpdCBpcyBMaSBKdW4sIHRoZW4gaGlzIG5hbWUgc2hvdWxk
IGFwcGVhciBpbiB0aGUgRnJvbSBmaWVsZC4KcmlnaHQsIGl0J3MgTGkgSnVuLCB3aWxsIGZpeCBp
biB2MS4KCj4KPiBBbHNvLCBpdCBzZWVtcyBhIEZpeGVzIHRhZyBpcyBuZWVkZWQgaGVyZS4Kcmln
aHQsIHdpbGwgZG8uCgotLSAKQmVzdCByZWdhcmRzIC0gRnJldW5kbGljaGUgR3LDvHNzZSAtIE1l
aWxsZXVyZXMgc2FsdXRhdGlvbnMKCklnb3IgT3Bhbml1awoKbWFpbHRvOiBpZ29yLm9wYW5pdWtA
Z21haWwuY29tCnNreXBlOiBpZ29yLm9wYW55dWsKKzM4MCAoOTMpIDgzNiA0MCA2NwpodHRwOi8v
dWEubGlua2VkaW4uY29tL2luL2lvcGFuaXVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
