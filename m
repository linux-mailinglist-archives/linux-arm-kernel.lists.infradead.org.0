Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FF820D02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=InNjl/n5yIJ6Wa+HYcnKedcLFAjN+hKr+owmxfiFfic=; b=DlH0X4bN+VIENm
	KgVboG0+Y5Z9i40vvFll4McdGmyc4tUtb3z2dttTC21PMpaPh6Rwqiules8ykJbQQDi+9SSeF24Jg
	XV4vDzN6FxNcw1KMzey8wMiBlW8OYUnSH0SSr198fQlGRNsbHe+X/grqIliFFqYLzfms3i+QtkGzr
	cc0VnMgdcwEoo5jAaYy8D5+SVmZDZAsSmIDCmy2ikl+o0mpAwtsGC47SJPTg6azu4YXxqHCICPhf+
	srHFFMWKEq1iAzG7xPAWJ6sVVqukrtJt/2i+wxdlJY+pnq1BRvwyPsxkdGDIzR0yQ4FqeMsosRPIw
	z+lNLLOZs2zi26PYZ4cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJGY-00080o-1e; Thu, 16 May 2019 16:29:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJGO-0007xy-St
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:29:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so1892132plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FOE0cCJQ21ga6g1DChuQ/Qq1kToyjWkdfWiPelD2OC4=;
 b=ayq0D5zU19MEk0xwhDehYCYeWHoQ08w7g7ZjKSj8+Z7ap0fNQU02iAUi4BNKUwMN5E
 DaDZsXTk9ac1bORDTuN/XFIeLq4ziTrZmWcEcwPx47BLpRJ937gCOyNca6DcHHrXlOI7
 n3NMuXxbDIDHBpYxtnrBUtgjXrYN73x/nRozw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FOE0cCJQ21ga6g1DChuQ/Qq1kToyjWkdfWiPelD2OC4=;
 b=DCjGe7aqfht7fLGUstbi8l6F2U0E6i3QDSuoJdEk2xPQuTXRGhoE/LDFUCkrcBP179
 Kckpm10xFjek6SyBsT5ebxi1d1G1sdby+hRjNe3s7FnugFOfrGg6tuIzdBI4w/nFBVfT
 cTVS4b/Up+nj7Dibk6UWJdV8gvP+2HHKq4PAkZ5nN6OpqDYs6xiqZeiSKBR44Uy2NMWS
 2N77pGgespvUbRM8gAEDGqBQjcHWvuREYVujwCx0ADZDMBYLoKhZ8fFOZslI1JnYWNJ1
 szbvGZk6PcIrWLZRQB5v1FCLCGhOxLCwkweejIF0ZR+YRsr+YvluggDBUH9iaM8mSPIv
 TSwA==
X-Gm-Message-State: APjAAAWFTgelQO1cQLtx+c2dWdV9bsl72d6b+YHF3O6ZakKWIXiiAzzw
 dBm9B6JporXIV8yazJ6G1wPt2A==
X-Google-Smtp-Source: APXvYqxrvwtoWK8QdXNAIVHAwc7IGRNSlG4OKmttVtrCs4o4+DbqSeo4gMHXIbJEH9AVCcAMyz3k0w==
X-Received: by 2002:a17:902:8a83:: with SMTP id
 p3mr51848281plo.88.1558024187640; 
 Thu, 16 May 2019 09:29:47 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id g128sm7168645pfb.131.2019.05.16.09.29.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:29:47 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] ARM: dts: rockchip: raise CPU trip point temperature
 for veyron to 100 degC
Date: Thu, 16 May 2019 09:29:40 -0700
Message-Id: <20190516162942.154823-1-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092948_928460_3EAA310A 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyB2YWx1ZSBtYXRjaGVzIHdoYXQgaXMgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUg
T1MgMy4xNAprZXJuZWwsIHRoZSAnb2ZmaWNpYWwnIGtlcm5lbCBmb3IgdmV5cm9uIGRldmljZXMu
IEtlZXAgdGhlIHRlbXBlcmF0dXJlCmZvciAnc3BlZWR5JyBhdCA5MMKwQywgYXMgaW4gdGhlIGRv
d25zdHJlYW0ga2VybmVsLgoKSW5jcmVhc2UgdGhlIHRlbXBlcmF0dXJlIGZvciBhIGhhcmR3YXJl
IHNodXRkb3duIHRvIDEyNcKwQywgd2hpY2gKbWF0Y2hlcyB0aGUgZG93bnN0cmVhbSBjb25maWd1
cmF0aW9uIGFuZCBnaXZlcyB0aGUgc3lzdGVtIGEgY2hhbmNlCnRvIHNodXQgZG93biBvcmRlcmx5
IGF0IHRoZSBjcml0aWNpYWwgdHJpcCBwb2ludC4KClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEth
ZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgotLS0KQ2hhbmdlcyBpbiB2MjoKLSBwYXRjaCBhZGRl
ZCB0byB0aGUgc2VyaWVzCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVl
ZHkuZHRzIHwgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLmR0c2kgICAg
ICAgfCA1ICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cyBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0cwppbmRleCBlMTY0MjFkODBkMjIuLmFi
MmE2NmFhMzM3ZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1z
cGVlZHkuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tc3BlZWR5LmR0
cwpAQCAtNjQsNiArNjQsMTAgQEAKIAl0ZW1wZXJhdHVyZSA9IDw3MDAwMD47CiB9OwogCismY3B1
X2NyaXQgeworCXRlbXBlcmF0dXJlID0gPDkwMDAwPjsKK307CisKICZlZHAgewogCS9kZWxldGUt
cHJvcGVydHkvcGluY3RybC1uYW1lczsKIAkvZGVsZXRlLXByb3BlcnR5L3BpbmN0cmwtMDsKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaQppbmRleCAxOTJkYmMwODlhZGUuLjU4ZGM1Mzhi
NWRmMyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi5kdHNpCisr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24uZHRzaQpAQCAtOTksNiArOTksMTAg
QEAKIAljcHUwLXN1cHBseSA9IDwmdmRkX2NwdT47CiB9OwogCismY3B1X2NyaXQgeworCXRlbXBl
cmF0dXJlID0gPDEwMDAwMD47Cit9OworCiAvKiByazMyODgtYyB1c2VkIGluIFZleXJvbiBDaHJv
bWUtZGV2aWNlcyBoYXMgc2xpZ2h0bHkgY2hhbmdlZCBPUFBzICovCiAmY3B1X29wcF90YWJsZSB7
CiAJL2RlbGV0ZS1ub2RlLyBvcHAtMzEyMDAwMDAwOwpAQCAtMzcxLDYgKzM3NSw3IEBACiAKIAly
b2NrY2hpcCxody10c2h1dC1tb2RlID0gPDE+OyAvKiB0c2h1dCBtb2RlIDA6Q1JVIDE6R1BJTyAq
LwogCXJvY2tjaGlwLGh3LXRzaHV0LXBvbGFyaXR5ID0gPDE+OyAvKiB0c2h1dCBwb2xhcml0eSAw
OkxPVyAxOkhJR0ggKi8KKwlyb2NrY2hpcCxody10c2h1dC10ZW1wID0gPDEyNTAwMD47CiB9Owog
CiAmdWFydDAgewotLSAKMi4yMS4wLjEwMjAuZ2YyODIwY2YwMWEtZ29vZwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
