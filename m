Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094101091A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 17:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JY1FqH/qBA6YAAi4kjwjL7RSlxQRgnS9Osb3XZhDuFw=; b=R5qAPg+Og1kQOD
	BerF1OuW57s4Tk99ofpqNzLTnbREpFaHosjaWVa7Swug7m90Y1fjApAgTa0xxKGhRSfs4akCbpJCK
	yPdMXQXikTngNXxOCKIk2Ey/rgAS0Q+1II+ki+2/dHNSVWrNUu1hDvgR9i31KkYioLNBbENisaQKX
	ASn3DQWKNvB29/QRQ50elCzuMMSKznIAlMAxIPUjZdg+LuDvt0LYtEgqDiH0MCfmscnO+HXom8D6g
	clOiVAvnT6gT07IB3OyQ3AftTkY4TZybWNAQQm78n88sdWtVc83BKIzkJaUfNGs2YdELwZg51QaD1
	5H8YAI9kBjZ86ITuLJWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGye-0006Ix-3t; Mon, 25 Nov 2019 16:12:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGyW-0006Ie-K2
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 16:12:33 +0000
Received: by mail-lf1-x142.google.com with SMTP id d6so11503915lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 08:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pwIL/irlcWNwmpTvJrew6iz5vbVsNdGhIhVpbssUodk=;
 b=VDOfdCfv4AfkHqlFUe01NzCuYRxzxuwoQs7XvIlLcoiHOK+fJnusvW3yWUaLaVpiNx
 VG4Dk3w/ohEms4NNvOxmsHJzLDWDK2CHkU9HXWt4OkoimgAFPnW67nneC3Fk2aAXoXdj
 DR/ospZTkd6t2BmyayEXGpJwnH3zLCW15FTW19/J2rKDf+L2o8UnTk32bqV2ooeaxguO
 0fIES1aO1cM7Ue+JliApX29Ly3B6WUxi5WRz2tooKCJ/zrVaw3tqVFjiY1YKY7c5nqpf
 Kd3fqsq0A7G2rxnDgYP2h+U7KO+TiDA7R3sqH7V+f6wTxeYhuwoX8qOXq2KhlrLdOMN/
 Qcsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pwIL/irlcWNwmpTvJrew6iz5vbVsNdGhIhVpbssUodk=;
 b=mPP/HGivyAL2hzvvgKQMM6gkyhZIVDNs+sxQ64yGIu7nXtwnhtlWrgz7dei1nPlEx4
 GFh8lCTObLFj7faL/M8QliNa9Omnpk6CLaL+NPCL/snZiKsodpLN+J6VbiVDgU5diuJ/
 SV5uKSnL0nn30HyaPb6FZomQAK6alvvj4i+SmTb8kKjSSgFYKWZSKJL8D1vOhC6czlRl
 7Qo0xAdsLF11aYK0vqznCGjZHvgeKL4U3R5tZpxLj/tGSt1jjoIoDGV6Ea5TuhmDkFH2
 pKyTi24faydLPOLUeIFOz45h1Z+2vOQgpD1XLrhelJEd9tx4KHIl6Te3Q//bkmglqfgV
 SKbQ==
X-Gm-Message-State: APjAAAWXGLnMe/ZAWpnHdu63EN1LAUvJlJHTcdQPz1eVm4znYEo47Nb8
 3ndwlw2xMfGJ4Tv5jkT7gLtG2DfZdbCtsZWT2N2muA==
X-Google-Smtp-Source: APXvYqz752SeEXFivN41Pet9Y0rxfrBFN4f7w+QRq7VC4oEC/DM9gSZ3msNcmW9TW7JLinnimAiSEMIAESbpSXF5CW4=
X-Received: by 2002:a19:ca03:: with SMTP id a3mr21554522lfg.20.1574698350303; 
 Mon, 25 Nov 2019 08:12:30 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574693313.git.agx@sigxcpu.org>
 <1e452d74454d550ec4134428994ad8559aaa587e.1574693313.git.agx@sigxcpu.org>
In-Reply-To: <1e452d74454d550ec4134428994ad8559aaa587e.1574693313.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 25 Nov 2019 13:12:34 -0300
Message-ID: <CAOMZO5CvZ+6St5s=zk7xRDARSYVsox-VQA4kMfTtTTn43m4tOg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mxsfb: Add compatible for iMX8MQ
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_081232_661195_B0EBAF28 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMTE6NTAgQU0gR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4
Y3B1Lm9yZz4gd3JvdGU6Cj4KPiBOWFAncyBpTVg4TVEgaGFzIGFuIExDRElGIGFzIHdlbGwuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgoKUmV2aWV3
ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
