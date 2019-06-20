Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C19D4D26B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:47:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=139eyQyaYT2JZiokWz2mZku7qornvOKtgC4BKFlm7sM=; b=qQ0g8TSR5kbi5L
	bldtlsyVXRUlRoIThcqaA1dt5WBR59fMfSeje/b723FYFOYyyTGvPqdYG70N8xHD3++nbUch32giv
	kwifNoArbYMl/xXxPxlhrTE6iNv6yqkoXQEjlGux7elvZivHcc4Mqx70AWvjIhhUELknuMl4trKuW
	7ZrIeR08HoA+tE23WTVI4IVfu2YyN98r1NDh4wbbB6YzFrNxa205+U4uCzvv0Zsf6xXOb+46DAPGM
	V7Q4XWj7rmW0F7S1fbbzvrwcTiQvCsBlc4edG4Z2fOInpoxhrgwUgRH6WA+3NEHxsOup/SDIBSXm7
	NxcJX2hJ97thpIV/tdTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzHu-000373-AG; Thu, 20 Jun 2019 15:47:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzHj-00036X-5X
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:47:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so3530986wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j8+O/FpjGEp5DMwDwlNn6YYVJi0XgVp0kNC/STZbtEU=;
 b=a7G2DL7iS4UbSDyFHlZOt6gKtJamMp/qfpGySB+qvl5QIMgRi8u3Ut0Sa2Dw/k1Pz2
 7iNZ4pUk8GMd46O4PxGk80ppkgFDfnAFNxbKL14h+yTOiF5f3BwkZbir65F4Y7xEGLJ9
 SI8cLSGVyRynl6LsNTsshElVDLAUUteWO9o8hESIO7QPzimF/9fCHcBJlyYhURyy1mHN
 l3bA475pko/ng+rpoWW0GaKL8F9oXrRuIqDLQ6bKdlwMGmGvaDmf1iq8afXYilHH2cN+
 1GrCeS/EuTcD9sOJqC2aUIhCbsJx2E/XvOaN1zKIYif8YqE1a37uYInaoJqf/1f5dM0d
 tVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j8+O/FpjGEp5DMwDwlNn6YYVJi0XgVp0kNC/STZbtEU=;
 b=l1Cp2OvzbAMB6Dd0JECkxY/FgSp8B1ObHNjI+lJDWojXMFKyngSp7LLXkXKXf+tv1K
 b4XX/nHiaimmojPwWC/2Np+wB4Vi0s/FqtWSXFUTzxuumyhqYr6vffXgNNS9yAyNcBju
 MwODCv6Wb4VFjRjQgj3W97kpBX+0ZkHM0GL3v7wvL2XMPg1oiHjCcljlABgVLjcNEXIB
 kFSvuycryoiQHhPyj/m0ZBkIL+5+b2KPuIPtyqhcGLQcb2vfMBF7dXkFslfNA2P0tRC9
 xLuGFchDjfdOUMhpP7Lms3fCLTptWMeMMt58PI0zvEpMH6l7af87d5qVAGlYNsvAm3gU
 uXbQ==
X-Gm-Message-State: APjAAAVOvURZCWLgGfSyn4FdbcaUl6lQiNpqZglqwWL3p9X77/AzcHfw
 thCfgdEx10lmT80kDUmeqDY=
X-Google-Smtp-Source: APXvYqzHNm9RBSmLyiRY/o0XRv5jhDv7AQySfI5uddGuB8TuFA9tiBLHxxYFpdEKryoOHuXSd1FtIw==
X-Received: by 2002:adf:db4c:: with SMTP id f12mr11932674wrj.342.1561045653597; 
 Thu, 20 Jun 2019 08:47:33 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net.
 [86.58.52.202])
 by smtp.gmail.com with ESMTPSA id f1sm6408689wml.28.2019.06.20.08.47.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 08:47:32 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v7 5/6] drm: sun4i: Add support for enabling
 DDC I2C bus to sun8i_dw_hdmi glue
Date: Thu, 20 Jun 2019 17:47:29 +0200
Message-ID: <3014360.88acaTKTIR@jernej-laptop>
In-Reply-To: <20190620134748.17866-6-megous@megous.com>
References: <20190620134748.17866-1-megous@megous.com>
 <20190620134748.17866-6-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_084735_235618_97E743F6 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAyMC4ganVuaWogMjAxOSBvYiAxNTo0Nzo0NyBDRVNUIGplIG1lZ291cyB2
aWEgbGludXgtc3VueGkgCm5hcGlzYWwoYSk6Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3Vz
QG1lZ291cy5jb20+Cj4gCj4gT3JhbmdlIFBpIDMgYm9hcmQgcmVxdWlyZXMgZW5hYmxpbmcgYSB2
b2x0YWdlIHNoaWZ0aW5nIGNpcmN1aXQgdmlhIEdQSU8KPiBmb3IgdGhlIEREQyBidXMgdG8gYmUg
dXNhYmxlLgo+IAo+IEFkZCBzdXBwb3J0IGZvciBoZG1pLWNvbm5lY3RvciBub2RlJ3Mgb3B0aW9u
YWwgZGRjLWVuLWdwaW9zIHByb3BlcnR5IHRvCj4gc3VwcG9ydCB0aGlzIHVzZSBjYXNlLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgoKUmV2aWV3
ZWQtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KCkJlc3QgcmVn
YXJkcywKSmVybmVqCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
