Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B0A5839
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=klFQ/JLrJ1Shrq0oIgVkgh4AdXYSy+QwwXJx+q+sADk=; b=OrRKI8dX6ISjsodFeo29mL/9pZ
	GUa/BYwEQ/RazS3pPvCK7sgXWeP6OgeM/EEzjVnD1Pe8+8BfVg+eTwKmRnwdv07JRCtk4/n2DvyAZ
	HSvbHfpDpx6o1slxFL0CpGA+yfCMaM11zZhllRJ0k6pXzsz5Ph0/UZuXTnssOyLpWGj0givNV8dxx
	K7o6LoJI5gBOJ9truuGV1+38+b6Lje5SGHl5vfl908j5bL2Sx6X64qx5bJZAplcbFmY3VwQAmCBo3
	DHBFa37BASeIm8uPdqGjGx3MXUoU+DGaeenuEiTbCUXGmdI8IwrDrIIKxul+rVhOEnd0dzxgeUgDl
	z8rEAQKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mal-0005W5-Ps; Mon, 02 Sep 2019 13:41:59 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY2-0001XG-3C
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:39:12 +0000
Received: by mail-wm1-f65.google.com with SMTP id t9so14650978wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:39:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:to;
 bh=GU3za1mDp0snm3Y74J5T69ZboJHf1rUUst4A4GavhcQ=;
 b=iMMm6aizh1XmDg7ny0g0K6NXtaEoI2ZEwYiQEzrpnJQomnbRhSQQMlvn98tp+srmK3
 GFSK0ibY0PXQNoYxy869wS037SJAfQbcqyQOAZJBNN65bqZIcn3W/pwvnxmpZ09I64VL
 eRGjr/64TPJDpEvcts+I1xoQunVVTF43MwobHHkyT28GRWtlA3m1NJtEWPYox0GSeTn5
 5h4Xlyy8La99ZxdilYDIYPA0LtoRJ4ocPq/p71f9Tc9RHlEoySkwpR3b8GiVtO5ZUAFr
 HDtTYpvB69++SPJmqZi7SUoPx7UxpFjBpUiAJkaE9Yoe3LU9MFodadpzlofB0yWH6jgo
 F6Eg==
X-Gm-Message-State: APjAAAXEFeFC1nIQAlhOmVo89o6OXGst7MjVwD68o3GNN+4przAuWv7J
 v0J3cKOtw/WwCwwKErl2Nw==
X-Google-Smtp-Source: APXvYqwlv1zoVJsxsY+eP42S6XXNnpqg8n1idrGUMkPM3XoBL/85siELBm35VrJHqa9xD9qf/J0QFA==
X-Received: by 2002:a1c:5451:: with SMTP id p17mr30814572wmi.103.1567431548399; 
 Mon, 02 Sep 2019 06:39:08 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id q14sm28331700wrc.77.2019.09.02.06.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:07 -0700 (PDT)
Message-ID: <5d6d1b7b.1c69fb81.2abcd.40af@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:07 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
References: <cover.1567169464.git.agx@sigxcpu.org>
 <64ec3f9375d9684f432dba48af63e3a5de8875f5.1567169464.git.agx@sigxcpu.org>
In-Reply-To: <64ec3f9375d9684f432dba48af63e3a5de8875f5.1567169464.git.agx@sigxcpu.org>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063910_259357_DA0953D3 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 L_8BIT_MISMATCH        Header says 7bits but body disagrees
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: , devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "To : David Airlie" <airlied@linux.ie>, Lee Jones <lee.jones@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Arnd Bergmann <arnd@arndb.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAzMCBBdWcgMjAxOSAxNDo1ODoyMSArMDIwMCwgPT9VVEYtOD9xP0d1aWRvPTIwRz1D
Mz1CQ250aGVyPz0gd3JvdGU6Cj4gVGhlIE5vcnRod2VzdCBMb2dpYyBNSVBJIERTSSBJUCBjb3Jl
IGNhbiBiZSBmb3VuZCBpbiBOWFBzIGkuTVg4IFNvQ3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogR3Vp
ZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiBUZXN0ZWQtYnk6IFJvYmVydCBDaGlyYXMg
PHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkvYnJp
ZGdlL253bC1kc2kueWFtbCAgICAgIHwgMTc2ICsrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTc2IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9ud2wtZHNpLnlhbWwKPiAK
ClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
