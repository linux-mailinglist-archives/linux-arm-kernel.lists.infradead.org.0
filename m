Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E7C5CEB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXLjdNgtZchHHqo2dznXzkMwmd9pW0b6l5F9seZKvV0=; b=Eykf5xKFwvO5ml
	X2/7xQEMgLlYeFNBwD+lu5n8o32pMw2/EKWDpTHRf232p7oK+BSzWS22fLBrZwUY4tHgLwnhdV6W4
	j6cuiKKG9Rgg8edV96FxJhNHCKwPYOgWYgf9ncDl6s5rBzd52DdQ+0Q4FYdGce8/7DJ7o3ivj2yew
	TEtSoqozwmwuGGmr3i97LoyVGW+GuR8PXC4qiNk0ONPosLrcu30Z27j5xTZBn/PAjHsw5WYebGxzJ
	11gMFiy4vDyU7YN/Mm/Pz77GyoEzgmJyZhlj86AHR9ribauA/DnMKSX/xzPm6uWFPR2SHkUVQQ36J
	IVXS51v6V0UCJuKEd8KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiHG9-0006ey-O2; Tue, 02 Jul 2019 11:47:41 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiHFw-0006eR-VL
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:47:30 +0000
Received: by mail-yb1-xb41.google.com with SMTP id x4so1202725ybk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 04:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iYZrmys3/TfpaazA2XWiT/TSEbAAksLqlj6ZynD2xWk=;
 b=lcJQMmt6baOOctsuGbaQsTWjGgM7s7CKLXoYb0+CQzOpJsTRHYREzkd/8Q/dfuuOUZ
 HX5qKdQrVQcWelEAVhoj8ZHzlvUJbmFcgX3J17+3GeWR6DYYZ3u3vNuHEmeJQTLpZRiW
 dwNVl6CnmpahWLTAJDUTCqo7ttR0m18gI69RjBhI1/mklFkd4L0UQj7VyvSur4gONpgV
 6cvlO1adRD0gqNnpmOv//P9QnnH87CTmkgwz/7N8MRqRrdH8DHEaEJJbJkakHFbx8dsU
 6u3/iJ1+gJQXn4un5aUg806xORKwn1LVi4nP95gxS17fO8lZ+tXKBIEO/H7CPTsrcu1j
 SVlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iYZrmys3/TfpaazA2XWiT/TSEbAAksLqlj6ZynD2xWk=;
 b=ea/0gHlMG1fiAomIvaun6ahljj3VLzAUJvJPnJCjii/nu8X0Im8318ddBwOknlDVZF
 hLoBIUNVJVRkdNPMX8U9X8kTrPGnetMbqW1pu1owzs1hV/sZdIm77HcRew+8EkcnADqM
 uCXETUdEWruBVF5vPDueXha6pcTVCAGKIkiYJJQiqbg49/t0a4pRJ+M/wdjpEUgWXlT9
 liytqr7pwFPpwBt4a9bZ2i/ZYSkJIJOupydQ1LiWsHgWAHvvxryLJchxG3QBAUbK3aRb
 xmzBgaDq+1YOfGtcmAdjXxEe7cl94noET/er7xcaDblfTF2tCOY4Pn77tPdJfz9jSOL+
 fl7A==
X-Gm-Message-State: APjAAAUg0FD5mlV4s9xgPqas15pgVxjr9V1Z+xUB3HtrS9LYMHVvSbtJ
 mQbw7J/Inyn04X2pMrPyCLRJ1OscSbQokwqzzXk=
X-Google-Smtp-Source: APXvYqyFfoChK3rqQLCksZ9VPYQx8ymAFP/2n5xhyywi4ep5LxSGcw3v0w5ozKJd6MUYJVOjINhiPlBbnXX9M9M2A+g=
X-Received: by 2002:a25:9347:: with SMTP id g7mr6440701ybo.277.1562068047954; 
 Tue, 02 Jul 2019 04:47:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190701032342.25971-1-huangfq.daxian@gmail.com>
 <20190701075255.GD172968@dtor-ws>
 <CABXRUiSO2Fos1V3hR5t3AviZ9Hit_y+E-Tp3PNOQj6-FKUBJBw@mail.gmail.com>
 <CAHp75VeUo2Au66tETo3zneBpeaVU+Y+-h5zghpo+hPuB=a6-eA@mail.gmail.com>
In-Reply-To: <CAHp75VeUo2Au66tETo3zneBpeaVU+Y+-h5zghpo+hPuB=a6-eA@mail.gmail.com>
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Tue, 2 Jul 2019 19:47:16 +0800
Message-ID: <CABXRUiQ77feNzEdQ7GqNxLS9YAMybVG3eAWWSDPFdGvERaxCyg@mail.gmail.com>
Subject: Re: [PATCH 2/4] input: keyboard/mouse/touchscreen/misc: Use
 dev_get_drvdata()
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_044729_040612_0C79071D 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Richard Fontana <rfontana@redhat.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Anson Huang <anson.huang@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Luca Weiss <luca@z3ntu.xyz>,
 NXP Linux Team <linux-imx@nxp.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Brian Masney <masneyb@onstation.org>,
 Arnd Bergmann <arnd@arndb.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-input <linux-input@vger.kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Pascal PAILLET-LME <p.paillet@st.com>, Shawn Guo <shawnguo@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Christian Hoff <christian_hoff@gmx.net>,
 Enrico Weigelt <info@metux.net>, Gabriel Fernandez <gabriel.fernandez@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPiDmlrwgMjAxOeW5tDfm
nIgy5pel6YCx5LqMIOS4i+WNiDU6NTHlr6vpgZPvvJoKPgo+IE9uIFR1ZSwgSnVsIDIsIDIwMTkg
YXQgMTE6MjAgQU0gRnVxaWFuIEh1YW5nIDxodWFuZ2ZxLmRheGlhbkBnbWFpbC5jb20+IHdyb3Rl
Ogo+ID4KPiA+IEkgYW0gbm90IGFuIGV4cGVydCBvbiB0aGlzLiBJIGp1c3Qgd3JpdGUgYSBjb2Nj
aW5lbGxlIHNjcmlwdCB0byBzZWFyY2gKPiA+IHRoaXMga2luZCBvZiBtaXN1c2UgYW5kIGZpeCBp
dCBpbiBhIG5haXZlIHdheS4KPiA+IENvdWxkIHlvdSB0ZWxsIG1lIGFib3V0IGhvdyB0byB1c2Ug
dGhlIHByb3BlciBidXMgYWNjZXNzb3JzPyBUaGVuIEkKPiA+IHdpbGwgZml4IGl0IHVwIGFuZCBy
ZXNlbmQgYSB2MiBwYXRjaCBzZXQuCj4KPiBGaXJzdCwgZG9uJ3QgdG9wIHBvc3QuCj4gQW5kIGFu
c3dlcmluZyB0byB0aGlzLCBzaW1wbGUgZHJvcCB0aGUgcGF0Y2guCj4gUHJvcGVyIGJ1cyBhY2Nl
c3NvcnMgaXMgZXhhY3RseSB3aGF0IGl0J3MgdXNlZCBpbiB0aGUgY3VycmVudCBjb2RlLgoKQnV0
IHdoeSBub3QgdXNlIGRldl9nZXRfZHJ2ZGF0YSBkaXJlY3RseS4KSXQgc2ltcGxpZmllcyBnZXR0
aW5nIHRoZSAnZHJpdmVyX2RhdGEnIGZyb20gJ3N0cnVjdCBkZXZpY2UnIGRpcmVjdGx5LgpBbmQg
dGhlIHBsYXRmb3JtX2RldmljZSBoZXJlIGlzIG5vdCByZXF1aXJlZC4KUmVwbGFjZSBpdCBjYW4g
cmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSBzdGVwIGJhY2sgYW5kIGZvcnRoLiAoZGV2IC0+IHBkZXYg
LT4gZGV2KS4KCkp1c3QgbGlrZSB0aGUgY29tbWl0CmVkODM1MTM2ZWU2NyAoIm1mZDogVXNlIGRl
dl9nZXRfZHJ2ZGF0YSgpIGRpcmVjdGx5IikKMTk0OGQ0OThkY2Y2KCJ0aGVybWFsOiBpbnRlbDog
aW50MzQweDogcHJvY2Vzc29yX3RoZXJtYWxfZGV2aWNlOgpzaW1wbGlmeSB0byBnZXQgZHJpdmVy
IGRhdGEiKQphbmQgbWFueSBvdGhlciBzaW1pbGFyIGNvbW1pdHMgaW4gdGhlIExpbnV4IGdpdCBs
b2cuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
