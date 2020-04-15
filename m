Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176C31A9888
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdVXN9w6sq8yJWkMXIdg2d3zcjTUMe42yjLQdD+Fvd4=; b=Njj+awrMtsnF1Q
	ob87ZkRfJP65TGjSCLThKmycaArO/0Yhdn/eLLCKABV2H11FwZb7D5tmIv485Amt50F7paSAEXlyL
	1ud9bLbsQDuejsmC0YiGGGrpOWi5EIaDJ2aa4KBsmQEcYT+r2AuBDO9H0ii7WbWtXch3v11hYfLTl
	2QDiS8hHGenJNjLPLNAx/i6AwP4sivxOZFX0TVgPk95Wc7K8wmrXSGYjkkN6PSXV4BXwEzry7qnZ9
	XOMaOPL1a8wzXwvBKDCKvjVh14sJFNsRvVei9XtFjcWUqxHdN1lbM48LcfZhn85jSI+XKylLwl5RN
	8cPKfZ7zow7WP4BUMAyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeGS-0004xd-Hz; Wed, 15 Apr 2020 09:23:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeGH-0004wW-Fs
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:23:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so18225672wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 02:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=p+pTtxbF6QRKm4ChjDfBhdzosGTJFivS8O2LYLc6THQ=;
 b=wU0K3NA/8EqmM1ff21F2XRJIgW7Mcma7ec0tb8Vq97AT7ksJ4VfqAtHEjK4wV5jIy4
 /yQFIqSk4PYe4fSkgSYWWgsf2SMd/XEpAUDZq9Jv+yx0ylFID3IH0MsxRdMJSjkikLnB
 XnLhglk5wYF+wo5aXbTs0aoE7O/oCNmB8j19OCsJUX5cmDn5Dh6oTgeTDan0cHwcb7QT
 SQskOHvgF5QlIxEfrXUEKamA5ifUB6l1MiFYHwpXk4gsHHZyrIX+MqlRzqDRLcZjs90f
 v2tI+U1O56udSg6DR9X5hpCHQQYIXmg6uegtzv3uC35CaVBlQpjzrfzSekHAHgXewnuz
 RLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=p+pTtxbF6QRKm4ChjDfBhdzosGTJFivS8O2LYLc6THQ=;
 b=g9yshGhKfYuvYcZaXMSdCQfd09chBOeY7u4S44jPpAlTE6hEz43sWs14HhkVxAapRD
 +Llt0K9RLf5kGStSVvgHwukQOy/0TGZWxWkQZcj489csyAq5KTI+Rr8gGvZ3+iB4A2RA
 Lgc5xDF0aNMJxl/E4T9A8TkEhRj/7mKQT7YD4CGoO4gDQOF/zxpvltGB0Ez23yztBVZT
 +tV6wzMJavEMBnlv1XQqNO2UREChpckDGsecxJ7YL3RUZS6k4OcxXmLmHg1E/snIpL+F
 7k5elN//ByFVMLpNa+LROkV3RLhaHRkEjCJYufRUGtVvO8IwY6nxsISGy5vJXll2sEwE
 KD/g==
X-Gm-Message-State: AGi0Pua6dfoo3PYiSFHCy1hyYGySz/ZI6QuQopV5yxAkjrLhPeeNvxmt
 PCYUpnLq9rIHgaZqrlDQiD2hAA==
X-Google-Smtp-Source: APiQypKZCE4jcvwyEetbY5z9ghNHFxXWQpEL5eKh/IZ5lv3p9Amt6yFTRtJP4keaPPNXhk4WY/KQtQ==
X-Received: by 2002:adf:ea44:: with SMTP id j4mr4812531wrn.38.1586942591970;
 Wed, 15 Apr 2020 02:23:11 -0700 (PDT)
Received: from [192.168.0.41] (lns-bzn-59-82-252-135-148.adsl.proxad.net.
 [82.252.135.148])
 by smtp.googlemail.com with ESMTPSA id 138sm23013314wmb.14.2020.04.15.02.23.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 02:23:11 -0700 (PDT)
Subject: Re: [RFC v2 1/9] thermal: int3400_thermal: Statically initialize
 .get_mode()/.set_mode() ops
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-pm@vger.kernel.org
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
 <20200414180105.20042-2-andrzej.p@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <3f271ce1-b4bf-4516-7e6d-7a26bd6953de@linaro.org>
Date: Wed, 15 Apr 2020 11:23:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200414180105.20042-2-andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_022313_571065_A1EF2BBF 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTQvMDQvMjAyMCAyMDowMCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IGludDM0
MDBfdGhlcm1hbF9vcHMgaXMgdXNlZCBpbnNpZGUgaW50MzQwMF90aGVybWFsX3Byb2JlKCkgb25s
eSBhZnRlcgo+IHRoZSBhc3NpZ25tZW50cywgd2hpY2ggY2FuIGp1c3QgYXMgd2VsbCBiZSBtYWRl
IHN0YXRpY2FsbHkgYXQgc3RydWN0J3MKPiBpbml0aXplci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBB
bmRyemVqIFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+IC0tLQoKQXBw
bGllZCB0aGlzIHBhdGNoIHdpdGggQmFydGxvbWllaidzIHRhZy4KClRoYW5rcwoKICAtLSBEYW5p
ZWwKCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5m
YWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxv
Zy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
