Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD635CBF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 10:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPOmr9LBfu/SwPZtkIjhcyfIwglWLmBjI/pW6lsbKoM=; b=sWhXCKbsUne4pQ
	e5zKIhe0bCWoD0E3+kAmUpDRZiLnllb+2vCzctG/Ke7fq/FICd6fVMV99dx6muX+39sgTuYoFXBhv
	9gN6tqGFb+bWY3PH+RzB6JGFGwRPAwwekIKsLTMOhgT6xRiGvKEg11wixtYopKxWsXizwbyXJYsMp
	aG1C5jE3B/X47msSzmX2reW6y0ZGFKdIzvfRMIL2HhjN42uNA8G61EHrfWI1Nsk7NBt52AoxOhMB/
	EJhtrhSkvw8IborDgsV0Vp1485zmi5VBj5jJv1WbPnhnpLS4l1IokxtoJjoyVZxCnIPitfFeNScaD
	W4Vpm8X0GaRcf4Ium8uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiE0A-0004Ch-79; Tue, 02 Jul 2019 08:18:58 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDzw-0004CK-Qb
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 08:18:46 +0000
Received: by mail-yb1-xb43.google.com with SMTP id p2so994063ybl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 01:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HAdClOUcHZ3IYsbl5G0rdG7nEVZII6d9JlEQ/5XRWdk=;
 b=FwZV5NXMNI5saJ1G6bx15kCv6z1R0kIQ/OlYpnallmC4052OFYRIMUdar2Pnl7GUFT
 Q3bKhIRB0X9PALZKZh8ZbQGLPGGBaGTdk3nXfc/IZuBhK2i3ge+qe8vSc+czhI9SiGWm
 oqj+2aBO/F6z9BoxoDfIJI37e9B7gRULfaQsthCZfuUL5r7pwHHCxQ/nspoLDRVJzrCZ
 f2aJRey0bxy9ncHKWSneF8WW4QPHPrgarhs9/N/Zwy1bziHC/quawgJGgzu61s5nIMiO
 RRGAi91FpAYcHZZbHGNcMElnzDj+5BIK9LJpBavEQoVi9ZmQx/vPu4FwOhh1Dk6UfHqV
 XUhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HAdClOUcHZ3IYsbl5G0rdG7nEVZII6d9JlEQ/5XRWdk=;
 b=OPRMZinP+oi+WFbzV6P7B0ez7EB5Z96t8BUspVAFfnyuWmV7SLxVl1dqCnbOhZpLMQ
 mTxX5Z9zXW4ZDSX9jI9NZunqqQrjhzJQLXiXU/dv5fHztI7cu6GO/3wvk18sfQPsUGZy
 EzbCAJV0LiqGNMZt8Key7GFYLiHNCnqIuwOm+T1l16TiQoxtrFNW21yJ++P4vXtmXsrQ
 JythTk6DXeic4mTERR8bMctHJA/bjcQWDMjTXc9SKCbbVTMAOaNX+miDUFkMFd8z721j
 aZ+Oq+oL4E+NhZ4OJrap/P3ifPr4Z/JyCEMwhzHVGli7UAFA/2MrFIG/Tzhxpk1rQC9n
 eYgA==
X-Gm-Message-State: APjAAAX6fhVyBJtjz+RFihcYFNc19nkTwQ69MNxSxF/LX4/Td5U3wcop
 x0cOrn3BO9HtE9sdd4VomEbwbQTPOmiBBFF8DT4=
X-Google-Smtp-Source: APXvYqwClpSzv6om5yiHw+9Sq3JuKWwAJ3+EDe4nfSlCRU988YJhWO0Q93wVfyW/7gxXqZfMBwixd3t50uVQ5DNxGB4=
X-Received: by 2002:a25:9347:: with SMTP id g7mr5943206ybo.277.1562055523517; 
 Tue, 02 Jul 2019 01:18:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
 <20190701075255.GD172968@dtor-ws>
In-Reply-To: <20190701075255.GD172968@dtor-ws>
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Tue, 2 Jul 2019 16:18:32 +0800
Message-ID: <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_011844_868400_5B56F4A5 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Richard Fontana <rfontana@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Luca Weiss <luca@z3ntu.xyz>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Pascal PAILLET-LME <p.paillet@st.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Enrico Weigelt <info@metux.net>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SSBhbSBub3QgYW4gZXhwZXJ0IG9uIHRoaXMuIEkganVzdCB3cml0ZSBhIGNvY2NpbmVsbGUgc2Ny
aXB0IHRvIHNlYXJjaAp0aGlzIGtpbmQgb2YgbWlzdXNlIGFuZCBmaXggaXQgaW4gYSBuYWl2ZSB3
YXkuCkNvdWxkIHlvdSB0ZWxsIG1lIGFib3V0IGhvdyB0byB1c2UgdGhlIHByb3BlciBidXMgYWNj
ZXNzb3JzPyBUaGVuIEkKd2lsbCBmaXggaXQgdXAgYW5kIHJlc2VuZCBhIHYyIHBhdGNoIHNldC4K
ClRoYW5rcy4KCkRtaXRyeSBUb3Jva2hvdiA8ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4g5pa8
IDIwMTnlubQ35pyIMeaXpemAseS4gCDkuIvljYgzOjUy5a+r6YGT77yaCj4KPiBIaSBGdXFpYW4s
Cj4KPiBPbiBNb24sIEp1bCAwMSwgMjAxOSBhdCAxMToyMzoxMkFNICswODAwLCBGdXFpYW4gSHVh
bmcgd3JvdGU6Cj4gPiBVc2luZyBkZXZfZ2V0X2RydmRhdGEgZGlyZWN0bHkuCj4gPgo+Cj4gSSBw
cmVmZXIgdXNpbmcgcHJvcGVyIGJ1cyBhY2Nlc3NvcnMuCj4KPiBUaGFua3MuCj4KPiAtLQo+IERt
aXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
