Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17E378021
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 17:25:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eL6tFhfRbo4jD6egBiv3fx9JHGE7mWCZFUBBNS6R1DE=; b=dQ7YyvNWjYaZup
	iFp9EWD02QiWGAcVitx/2onNI9mvUYzT5HcTMe/VGg3wH4vmiJ4PZHbfTugSgo/qpt8mji5mEZr6W
	pNzE2VGmSJSJOmix9cf7h+HIkLRvyG0JDKSYXuPlTrsmcwiOGXh1KD66KRbI0MeIc5F+0vIHREkWl
	RM5Gmu9BDsWS5osxMntqdMfpNWj8B1G/bvMOJf5P+1sw0J7IFBPwhBftPDY5KaHeABfoIQ4QvFIGi
	l/vMUuT4ptDqglWQcYaFdHSIGvmRFVhakpYDTZOdB05AyvbFwvSCr4BoFzGXkd9EeEJcgD8n1wmAo
	ngeXUIA174S7LhPtsiEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrl2v-0007MP-B2; Sun, 28 Jul 2019 15:25:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrl2I-0007GQ-61
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 15:24:35 +0000
Received: by mail-lj1-x242.google.com with SMTP id h10so56048859ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 08:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XESaxjYdas5a8N8eff8KwYDLiyaFr2Owam2TYo7fjSM=;
 b=H/8RrtQD+LS5GhQeXc2KchdCjwhty4e3aqG+Fd+pLIFD9+jfqrHh3TYKi5S92fF4Ib
 bJ8YzxRxO4LLwCSNnL3xOX09lcNVU8WbUnD8Z50heIzbE8oeSgG+nzqcy9ycQ7cWp4BS
 yXRgqGYfbkQiRKYEyUQfwN6N/JcfQV8SNO38av45f0yN40rsRPmqMgRt+6fwYyWjECTZ
 o2ucVaVowEo4FwEIa1XHpPQJeC9z6QvExUTTnX/11ZJh3KFrxhb1dlVpDSLjDZ4TtIRn
 Sh/wAWpW4ia4aKMBPNiewJaeZqwd72jH0xOB6epMnRblIT1s4iRT9Gwl7I6bQlN1JA3o
 6Qnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XESaxjYdas5a8N8eff8KwYDLiyaFr2Owam2TYo7fjSM=;
 b=bMF1lL/zGtPYebMFwBLmLvTzHdaVHVdk+f4J6Dn4x9i/utPTSb+93CYrG4D3ukrK+B
 q50+78CVuPQItTTc0DEuztoBeFHRd8tn7chsGaEmL0lVV3/osMPpI4dyk2RpLdtG4TzH
 FuEA2VtfX7p1CvVimLiPEKB8lN65tsQOvXJA+7irLdvRpi/lEUV/UV6fISgBp6S6Wq86
 3/t9relCRFLWcpQA/OwR9X+rar+a0qgeuqlg1LBRDNkiCA+YRhle1cerbx9hk0LMh057
 6Pye1qOwARejZe89XDt2l0SdI2AK+Jb6zR55vWpcM6XUJDJT2KKvBBhH55/QAYhsqgLQ
 pqXA==
X-Gm-Message-State: APjAAAWsGBrKsmtOrccRgheJKVJdYkO1JJn4BUIn9uYt3WZo47FRFn+k
 UevrZQ0N87RfCsmOKGpGpQS3dBuXOBMDrvpg0NY=
X-Google-Smtp-Source: APXvYqx0B5SfSllnaGRSgBXv5UCoIVvQyJqr+nIa2jGuBzm9lAem+hJ+CEoU8GXntWmPJEoF/luetozWB5qey+P03G0=
X-Received: by 2002:a2e:4e12:: with SMTP id c18mr4951431ljb.211.1564327467967; 
 Sun, 28 Jul 2019 08:24:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <20190727182636.GA7170@bogon.m.sigxcpu.org>
 <CAOMZO5C_g5bO-yqhoLbb6geUcmzi4necjdQ_P2tROq2vzEPOqQ@mail.gmail.com>
 <20190728075858.GA15144@bogon.m.sigxcpu.org>
In-Reply-To: <20190728075858.GA15144@bogon.m.sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 28 Jul 2019 12:24:30 -0300
Message-ID: <CAOMZO5CpURvqawVA=MhYxdAKABzVWWenVMfWZ7D=CKR_qtP7QQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_082434_409946_B6D562FA 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk <linux-clk@vger.kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, dl-linux-imx <Linux-imx@nxp.com>,
 "rui.zhang" <rui.zhang@intel.com>, Chris Healy <cphealy@gmail.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Daniel Baluta <daniel.baluta@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR3VpZG8sCgpPbiBTdW4sIEp1bCAyOCwgMjAxOSBhdCA0OjU5IEFNIEd1aWRvIEfDvG50aGVy
IDxhZ3hAc2lneGNwdS5vcmc+IHdyb3RlOgoKPiBZZXMsIHRoaXMgZml4ZXMgaXQgZm9yIG1lLCB0
aGFua3MhCgpUaGFua3MgZm9yIHRlc3RpbmcgaXQuCgpJIHdpbGwgc2VuZCBhIGZvcm1hbCBwYXRj
aCB0b21vcnJvdy4KClJlZ2FyZHMsCgpGYWJpbyBFc3RldmFtCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
