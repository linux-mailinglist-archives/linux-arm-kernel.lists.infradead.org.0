Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B245319FE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 09:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJWk3G7Qx8p3IqnElYiUFRNsSOpbU59NKblKnQuoruI=; b=mv+iC8zg0m/8jK
	aTspec7CZOd6GxPidrQbB/FbP7XJuIGYKo6auqQ/A0367AMfCJoocpV9LrfHXtgWIHTDUI/kTTwXK
	dsbg+IWZpVF2uvIxI2IjtFu0/zkSg2Gk4BLmKZlZwsWE1ebE0cgWeb6VopRRfLiJyPvVWIznWgKDY
	b1NTvtRHzH7jsJhBXe3rUwFu3VdHAUFBFT6+tAO/beFCAHmWGY5+x0HYjajKcj6mOhb9lDhkfFkYA
	LcLUGpzub0QOA+ZhSiNIvGNOcGJl9uxXaqgpVvaznhwr4JcbbuQWZDP1KmbGp4xzJRgKlDo9Qpy2s
	89IN0AeASiqA6Xo+c8tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWy7I-00024K-B0; Sat, 01 Jun 2019 07:07:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWy71-0001vx-Cn
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 07:07:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id h1so7872451wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 00:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K0CSuChjUZ2dt5vxKaxZLuqnfriivl17ufNwPPlIjqU=;
 b=mFcOgLijA/T2qQ9lKLfEvyIJMWjvmtP+ojGIqAt3gFFOuA6O1wf8bdZNjH1J/Xq5pQ
 EHgHiCDyjLrnRX0nthUcHhKhT5ugBDaV6Svt0qXc6kzWs7IB3NPqfNHhoCgvo5Pni+xN
 MxpWou0qpCWO5wPUTocShVh0RSzEka+qOHp50k5a20zHqbPfAalfz2ARbK1rxNb/SiY4
 UXxeM5V2B04kOCWPM3Z0xcaomwAN15VVMQAh6MQ9ztK5/Z6T6HALCcr4qnzhxYw0qR6m
 HUrKy2scg5LHj2MXhlxBw8eWyDzfAyCkOW/Juf0zavFIVXMvUO/L5Wb8m4hZKRxT8p+/
 /YAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K0CSuChjUZ2dt5vxKaxZLuqnfriivl17ufNwPPlIjqU=;
 b=SnfynS+HA9ezqUSGC2Ws0C5QbG3H8h4p2xMds9bErOTModIpoTVVe5610e79HCnlDa
 IHs+CJcy8YLDdTuyLL0Mlq3jM+PmJQTw/yqZlIH57BBEidFAj2N1xZpD0rAoucZuL4Nz
 eQDe+4C5U+eBrzyQYaDnusfxaCzdn/5/xtR6aX7mxQ3T+tmLpZ4GSfxQZyvKFIY3mLa+
 /RmgKUydn0gh29pArPiV5V2+ZgT4+VoXiBypb70rjb0QVmn1B38qfbiUUrBYkxIhs/iz
 4g+ktQ43NJoUGCYsrjLBv+d+lVQgv5sQpziIW8MxRtOJE01f8a+xOrvip1JW8SiIhGqY
 Kwew==
X-Gm-Message-State: APjAAAUR9rTZjhWbbTFTBQaDobh12gji34QNHsBKMEYF9/0YtFjjajD3
 NSONtDez+N4VTX5JCfPOiCE=
X-Google-Smtp-Source: APXvYqykAVBSDvAGzBbYBaAVXBT2T31urQMO2nwOW+KwGhkdT7S/27ni+Z6LhFgQ+5RZbC4DUmiq+A==
X-Received: by 2002:adf:f6c4:: with SMTP id y4mr9073889wrp.37.1559372848519;
 Sat, 01 Jun 2019 00:07:28 -0700 (PDT)
Received: from morpheus.roving-it.com.com
 (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
 by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 01 Jun 2019 00:07:27 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX License
 Identifier
Date: Sat,  1 Jun 2019 08:07:16 +0100
Message-Id: <20190601070718.26971-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601070718.26971-1-pbrobinson@gmail.com>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_000731_450386_54B0A8A1 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIHRoZSBTUERYIExpY2Vuc2UgSWRlbnRpZmllciBmb3IgR1BMLTIuMCsgT1IgWDExCgpTaWdu
ZWQtb2ZmLWJ5OiBQZXRlciBSb2JpbnNvbiA8cGJyb2JpbnNvbkBnbWFpbC5jb20+Ci0tLQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28tbmVvLWJhc2ljLmR0cyAgIHwgMzkgKy0tLS0tLS0t
LS0tLS0tLS0tLQogLi4uL2FybS9ib290L2R0cy9pbXg2c3gtdWRvby1uZW8tZXh0ZW5kZWQuZHRz
IHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28t
bmVvLWZ1bGwuZHRzICAgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vYm9vdC9k
dHMvaW14NnN4LXVkb28tbmVvLmR0c2kgICAgICAgIHwgMzkgKy0tLS0tLS0tLS0tLS0tLS0tLQog
NCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDE1MiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtdWRvby1uZW8tYmFzaWMuZHRzIGIvYXJj
aC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28tbmVvLWJhc2ljLmR0cwppbmRleCBkYjBmZWI5Yjlm
NWQuLmI2ZmJjZWFmNjg4OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXVk
b28tbmVvLWJhc2ljLmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg2c3gtdWRvby1uZW8t
YmFzaWMuZHRzCkBAIC0xLDQzICsxLDYgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgWDExKQogLyoKICAqIENvcHlyaWdodCAoYykgMjAxNiBBbmRyZWFzIEbDpHJi
ZXIKLSAqCi0gKiBUaGlzIGZpbGUgaXMgZHVhbC1saWNlbnNlZDogeW91IGNhbiB1c2UgaXQgZWl0
aGVyIHVuZGVyIHRoZSB0ZXJtcwotICogb2YgdGhlIEdQTCBvciB0aGUgWDExIGxpY2Vuc2UsIGF0
IHlvdXIgb3B0aW9uLiBOb3RlIHRoYXQgdGhpcyBkdWFsCi0gKiBsaWNlbnNpbmcgb25seSBhcHBs
aWVzIHRvIHRoaXMgZmlsZSwgYW5kIG5vdCB0aGlzIHByb2plY3QgYXMgYQotICogd2hvbGUuCi0g
KgotICogIGEpIFRoaXMgbGlicmFyeSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJp
YnV0ZSBpdCBhbmQvb3IKLSAqICAgICBtb2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcwotICogICAgIHB1Ymxpc2hlZCBieSB0aGUgRnJl
ZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIgdmVyc2lvbiAyIG9mIHRoZQotICogICAgIExp
Y2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCi0gKgotICogICAg
IFRoaXMgbGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUg
dXNlZnVsLAotICogICAgIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVuIHRo
ZSBpbXBsaWVkIHdhcnJhbnR5IG9mCi0gKiAgICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQotICogICAgIEdOVSBHZW5lcmFsIFB1
YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCi0gKgotICogT3IsIGFsdGVybmF0aXZlbHks
Ci0gKgotICogIGIpIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdl
LCB0byBhbnkgcGVyc29uCi0gKiAgICAgb2J0YWluaW5nIGEgY29weSBvZiB0aGlzIHNvZnR3YXJl
IGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24KLSAqICAgICBmaWxlcyAodGhlICJTb2Z0d2Fy
ZSIpLCB0byBkZWFsIGluIHRoZSBTb2Z0d2FyZSB3aXRob3V0Ci0gKiAgICAgcmVzdHJpY3Rpb24s
IGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24gdGhlIHJpZ2h0cyB0byB1c2UsCi0gKiAgICAg
Y29weSwgbW9kaWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3VibGljZW5zZSwgYW5k
L29yCi0gKiAgICAgc2VsbCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQgdG8gcGVybWl0IHBl
cnNvbnMgdG8gd2hvbSB0aGUKLSAqICAgICBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28s
IHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZwotICogICAgIGNvbmRpdGlvbnM6Ci0gKgotICogICAg
IFRoZSBhYm92ZSBjb3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIHNo
YWxsIGJlCi0gKiAgICAgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0
aW9ucyBvZiB0aGUgU29mdHdhcmUuCi0gKgotICogICAgIFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURF
RCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELAotICogICAgIEVYUFJFU1Mg
T1IgSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElFUwot
ICogICAgIE9GIE1FUkNIQU5UQUJJTElUWSwgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBP
U0UgQU5ECi0gKiAgICAgTk9OSU5GUklOR0VNRU5ULiBJTiBOTyBFVkVOVCBTSEFMTCBUSEUgQVVU
SE9SUyBPUiBDT1BZUklHSFQKLSAqICAgICBIT0xERVJTIEJFIExJQUJMRSBGT1IgQU5ZIENMQUlN
LCBEQU1BR0VTIE9SIE9USEVSIExJQUJJTElUWSwKLSAqICAgICBXSEVUSEVSIElOIEFOIEFDVElP
TiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKLSAqICAgICBGUk9NLCBP
VVQgT0YgT1IgSU4gQ09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SCi0g
KiAgICAgT1RIRVIgREVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgogICovCiAKIC9kdHMtdjEvOwpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28tbmVvLWV4dGVuZGVkLmR0
cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC11ZG9vLW5lby1leHRlbmRlZC5kdHMKaW5kZXgg
NWM3YTJiYjkxNDFjLi5jNjAwNWNkMjg0YmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZzeC11ZG9vLW5lby1leHRlbmRlZC5kdHMKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14
NnN4LXVkb28tbmVvLWV4dGVuZGVkLmR0cwpAQCAtMSw0MyArMSw2IEBACisvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIFgxMSkKIC8qCiAgKiBDb3B5cmlnaHQgKGMpIDIw
MTYgQW5kcmVhcyBGw6RyYmVyCi0gKgotICogVGhpcyBmaWxlIGlzIGR1YWwtbGljZW5zZWQ6IHlv
dSBjYW4gdXNlIGl0IGVpdGhlciB1bmRlciB0aGUgdGVybXMKLSAqIG9mIHRoZSBHUEwgb3IgdGhl
IFgxMSBsaWNlbnNlLCBhdCB5b3VyIG9wdGlvbi4gTm90ZSB0aGF0IHRoaXMgZHVhbAotICogbGlj
ZW5zaW5nIG9ubHkgYXBwbGllcyB0byB0aGlzIGZpbGUsIGFuZCBub3QgdGhpcyBwcm9qZWN0IGFz
IGEKLSAqIHdob2xlLgotICoKLSAqICBhKSBUaGlzIGxpYnJhcnkgaXMgZnJlZSBzb2Z0d2FyZTsg
eW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yCi0gKiAgICAgbW9kaWZ5IGl0IHVuZGVyIHRo
ZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMKLSAqICAgICBwdWJs
aXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMiBv
ZiB0aGUKLSAqICAgICBMaWNlbnNlLCBvciAoYXQgeW91ciBvcHRpb24pIGFueSBsYXRlciB2ZXJz
aW9uLgotICoKLSAqICAgICBUaGlzIGxpYnJhcnkgaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUg
dGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKLSAqICAgICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7
IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgotICogICAgIE1FUkNIQU5UQUJJ
TElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUKLSAqICAg
ICBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgotICoKLSAqIE9y
LCBhbHRlcm5hdGl2ZWx5LAotICoKLSAqICBiKSBQZXJtaXNzaW9uIGlzIGhlcmVieSBncmFudGVk
LCBmcmVlIG9mIGNoYXJnZSwgdG8gYW55IHBlcnNvbgotICogICAgIG9idGFpbmluZyBhIGNvcHkg
b2YgdGhpcyBzb2Z0d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uCi0gKiAgICAgZmls
ZXMgKHRoZSAiU29mdHdhcmUiKSwgdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91dAotICog
ICAgIHJlc3RyaWN0aW9uLCBpbmNsdWRpbmcgd2l0aG91dCBsaW1pdGF0aW9uIHRoZSByaWdodHMg
dG8gdXNlLAotICogICAgIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUs
IHN1YmxpY2Vuc2UsIGFuZC9vcgotICogICAgIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwg
YW5kIHRvIHBlcm1pdCBwZXJzb25zIHRvIHdob20gdGhlCi0gKiAgICAgU29mdHdhcmUgaXMgZnVy
bmlzaGVkIHRvIGRvIHNvLCBzdWJqZWN0IHRvIHRoZSBmb2xsb3dpbmcKLSAqICAgICBjb25kaXRp
b25zOgotICoKLSAqICAgICBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhpcyBwZXJt
aXNzaW9uIG5vdGljZSBzaGFsbCBiZQotICogICAgIGluY2x1ZGVkIGluIGFsbCBjb3BpZXMgb3Ig
c3Vic3RhbnRpYWwgcG9ydGlvbnMgb2YgdGhlIFNvZnR3YXJlLgotICoKLSAqICAgICBUSEUgU09G
VFdBUkUgSVMgUFJPVklERUQgIkFTIElTIiwgV0lUSE9VVCBXQVJSQU5UWSBPRiBBTlkgS0lORCwK
LSAqICAgICBFWFBSRVNTIE9SIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8g
VEhFIFdBUlJBTlRJRVMKLSAqICAgICBPRiBNRVJDSEFOVEFCSUxJVFksIEZJVE5FU1MgRk9SIEEg
UEFSVElDVUxBUiBQVVJQT1NFIEFORAotICogICAgIE5PTklORlJJTkdFTUVOVC4gSU4gTk8gRVZF
TlQgU0hBTEwgVEhFIEFVVEhPUlMgT1IgQ09QWVJJR0hUCi0gKiAgICAgSE9MREVSUyBCRSBMSUFC
TEUgRk9SIEFOWSBDTEFJTSwgREFNQUdFUyBPUiBPVEhFUiBMSUFCSUxJVFksCi0gKiAgICAgV0hF
VEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09OVFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5H
Ci0gKiAgICAgRlJPTSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lUSCBUSEUgU09GVFdBUkUg
T1IgVEhFIFVTRSBPUgotICogICAgIE9USEVSIERFQUxJTkdTIElOIFRIRSBTT0ZUV0FSRS4KICAq
LwogCiAvZHRzLXYxLzsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC11ZG9v
LW5lby1mdWxsLmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC11ZG9vLW5lby1mdWxsLmR0
cwppbmRleCAxM2RmZTJhZmFiYTUuLmFkOGI4YTY2M2E3MCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
Ym9vdC9kdHMvaW14NnN4LXVkb28tbmVvLWZ1bGwuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZzeC11ZG9vLW5lby1mdWxsLmR0cwpAQCAtMSw0MyArMSw2IEBACisvLyBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIFgxMSkKIC8qCiAgKiBDb3B5cmlnaHQgKGMpIDIw
MTYgQW5kcmVhcyBGw6RyYmVyCi0gKgotICogVGhpcyBmaWxlIGlzIGR1YWwtbGljZW5zZWQ6IHlv
dSBjYW4gdXNlIGl0IGVpdGhlciB1bmRlciB0aGUgdGVybXMKLSAqIG9mIHRoZSBHUEwgb3IgdGhl
IFgxMSBsaWNlbnNlLCBhdCB5b3VyIG9wdGlvbi4gTm90ZSB0aGF0IHRoaXMgZHVhbAotICogbGlj
ZW5zaW5nIG9ubHkgYXBwbGllcyB0byB0aGlzIGZpbGUsIGFuZCBub3QgdGhpcyBwcm9qZWN0IGFz
IGEKLSAqIHdob2xlLgotICoKLSAqICBhKSBUaGlzIGxpYnJhcnkgaXMgZnJlZSBzb2Z0d2FyZTsg
eW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yCi0gKiAgICAgbW9kaWZ5IGl0IHVuZGVyIHRo
ZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMKLSAqICAgICBwdWJs
aXNoZWQgYnkgdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMiBv
ZiB0aGUKLSAqICAgICBMaWNlbnNlLCBvciAoYXQgeW91ciBvcHRpb24pIGFueSBsYXRlciB2ZXJz
aW9uLgotICoKLSAqICAgICBUaGlzIGxpYnJhcnkgaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUg
dGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKLSAqICAgICBidXQgV0lUSE9VVCBBTlkgV0FSUkFOVFk7
IHdpdGhvdXQgZXZlbiB0aGUgaW1wbGllZCB3YXJyYW50eSBvZgotICogICAgIE1FUkNIQU5UQUJJ
TElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRS4gIFNlZSB0aGUKLSAqICAg
ICBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgotICoKLSAqIE9y
LCBhbHRlcm5hdGl2ZWx5LAotICoKLSAqICBiKSBQZXJtaXNzaW9uIGlzIGhlcmVieSBncmFudGVk
LCBmcmVlIG9mIGNoYXJnZSwgdG8gYW55IHBlcnNvbgotICogICAgIG9idGFpbmluZyBhIGNvcHkg
b2YgdGhpcyBzb2Z0d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uCi0gKiAgICAgZmls
ZXMgKHRoZSAiU29mdHdhcmUiKSwgdG8gZGVhbCBpbiB0aGUgU29mdHdhcmUgd2l0aG91dAotICog
ICAgIHJlc3RyaWN0aW9uLCBpbmNsdWRpbmcgd2l0aG91dCBsaW1pdGF0aW9uIHRoZSByaWdodHMg
dG8gdXNlLAotICogICAgIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUs
IHN1YmxpY2Vuc2UsIGFuZC9vcgotICogICAgIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwg
YW5kIHRvIHBlcm1pdCBwZXJzb25zIHRvIHdob20gdGhlCi0gKiAgICAgU29mdHdhcmUgaXMgZnVy
bmlzaGVkIHRvIGRvIHNvLCBzdWJqZWN0IHRvIHRoZSBmb2xsb3dpbmcKLSAqICAgICBjb25kaXRp
b25zOgotICoKLSAqICAgICBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhpcyBwZXJt
aXNzaW9uIG5vdGljZSBzaGFsbCBiZQotICogICAgIGluY2x1ZGVkIGluIGFsbCBjb3BpZXMgb3Ig
c3Vic3RhbnRpYWwgcG9ydGlvbnMgb2YgdGhlIFNvZnR3YXJlLgotICoKLSAqICAgICBUSEUgU09G
VFdBUkUgSVMgUFJPVklERUQgIkFTIElTIiwgV0lUSE9VVCBXQVJSQU5UWSBPRiBBTlkgS0lORCwK
LSAqICAgICBFWFBSRVNTIE9SIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8g
VEhFIFdBUlJBTlRJRVMKLSAqICAgICBPRiBNRVJDSEFOVEFCSUxJVFksIEZJVE5FU1MgRk9SIEEg
UEFSVElDVUxBUiBQVVJQT1NFIEFORAotICogICAgIE5PTklORlJJTkdFTUVOVC4gSU4gTk8gRVZF
TlQgU0hBTEwgVEhFIEFVVEhPUlMgT1IgQ09QWVJJR0hUCi0gKiAgICAgSE9MREVSUyBCRSBMSUFC
TEUgRk9SIEFOWSBDTEFJTSwgREFNQUdFUyBPUiBPVEhFUiBMSUFCSUxJVFksCi0gKiAgICAgV0hF
VEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09OVFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5H
Ci0gKiAgICAgRlJPTSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lUSCBUSEUgU09GVFdBUkUg
T1IgVEhFIFVTRSBPUgotICogICAgIE9USEVSIERFQUxJTkdTIElOIFRIRSBTT0ZUV0FSRS4KICAq
LwogCiAvZHRzLXYxLzsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC11ZG9v
LW5lby5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnN4LXVkb28tbmVvLmR0c2kKaW5kZXgg
NTNiM2VhYzk0ZjBkLi4zODY3MDdjMWJmZTAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDZzeC11ZG9vLW5lby5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDZzeC11ZG9v
LW5lby5kdHNpCkBAIC0xLDQzICsxLDYgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgWDExKQogLyoKICAqIENvcHlyaWdodCAoYykgMjAxNiBBbmRyZWFzIEbDpHJi
ZXIKLSAqCi0gKiBUaGlzIGZpbGUgaXMgZHVhbC1saWNlbnNlZDogeW91IGNhbiB1c2UgaXQgZWl0
aGVyIHVuZGVyIHRoZSB0ZXJtcwotICogb2YgdGhlIEdQTCBvciB0aGUgWDExIGxpY2Vuc2UsIGF0
IHlvdXIgb3B0aW9uLiBOb3RlIHRoYXQgdGhpcyBkdWFsCi0gKiBsaWNlbnNpbmcgb25seSBhcHBs
aWVzIHRvIHRoaXMgZmlsZSwgYW5kIG5vdCB0aGlzIHByb2plY3QgYXMgYQotICogd2hvbGUuCi0g
KgotICogIGEpIFRoaXMgbGlicmFyeSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJp
YnV0ZSBpdCBhbmQvb3IKLSAqICAgICBtb2RpZnkgaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBH
TlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcwotICogICAgIHB1Ymxpc2hlZCBieSB0aGUgRnJl
ZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIgdmVyc2lvbiAyIG9mIHRoZQotICogICAgIExp
Y2Vuc2UsIG9yIChhdCB5b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCi0gKgotICogICAg
IFRoaXMgbGlicmFyeSBpcyBkaXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUg
dXNlZnVsLAotICogICAgIGJ1dCBXSVRIT1VUIEFOWSBXQVJSQU5UWTsgd2l0aG91dCBldmVuIHRo
ZSBpbXBsaWVkIHdhcnJhbnR5IG9mCi0gKiAgICAgTUVSQ0hBTlRBQklMSVRZIG9yIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQotICogICAgIEdOVSBHZW5lcmFsIFB1
YmxpYyBMaWNlbnNlIGZvciBtb3JlIGRldGFpbHMuCi0gKgotICogT3IsIGFsdGVybmF0aXZlbHks
Ci0gKgotICogIGIpIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdl
LCB0byBhbnkgcGVyc29uCi0gKiAgICAgb2J0YWluaW5nIGEgY29weSBvZiB0aGlzIHNvZnR3YXJl
IGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24KLSAqICAgICBmaWxlcyAodGhlICJTb2Z0d2Fy
ZSIpLCB0byBkZWFsIGluIHRoZSBTb2Z0d2FyZSB3aXRob3V0Ci0gKiAgICAgcmVzdHJpY3Rpb24s
IGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24gdGhlIHJpZ2h0cyB0byB1c2UsCi0gKiAgICAg
Y29weSwgbW9kaWZ5LCBtZXJnZSwgcHVibGlzaCwgZGlzdHJpYnV0ZSwgc3VibGljZW5zZSwgYW5k
L29yCi0gKiAgICAgc2VsbCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQgdG8gcGVybWl0IHBl
cnNvbnMgdG8gd2hvbSB0aGUKLSAqICAgICBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28s
IHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZwotICogICAgIGNvbmRpdGlvbnM6Ci0gKgotICogICAg
IFRoZSBhYm92ZSBjb3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIHNo
YWxsIGJlCi0gKiAgICAgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0
aW9ucyBvZiB0aGUgU29mdHdhcmUuCi0gKgotICogICAgIFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURF
RCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELAotICogICAgIEVYUFJFU1Mg
T1IgSU1QTElFRCwgSU5DTFVESU5HIEJVVCBOT1QgTElNSVRFRCBUTyBUSEUgV0FSUkFOVElFUwot
ICogICAgIE9GIE1FUkNIQU5UQUJJTElUWSwgRklUTkVTUyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBP
U0UgQU5ECi0gKiAgICAgTk9OSU5GUklOR0VNRU5ULiBJTiBOTyBFVkVOVCBTSEFMTCBUSEUgQVVU
SE9SUyBPUiBDT1BZUklHSFQKLSAqICAgICBIT0xERVJTIEJFIExJQUJMRSBGT1IgQU5ZIENMQUlN
LCBEQU1BR0VTIE9SIE9USEVSIExJQUJJTElUWSwKLSAqICAgICBXSEVUSEVSIElOIEFOIEFDVElP
TiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsIEFSSVNJTkcKLSAqICAgICBGUk9NLCBP
VVQgT0YgT1IgSU4gQ09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SCi0g
KiAgICAgT1RIRVIgREVBTElOR1MgSU4gVEhFIFNPRlRXQVJFLgogICovCiAKICNpbmNsdWRlICJp
bXg2c3guZHRzaSIKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
