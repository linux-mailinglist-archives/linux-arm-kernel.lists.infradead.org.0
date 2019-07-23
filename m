Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D7271822
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HmmM6e3srXKuWXlnUdJYGZ6LuuSVj3Q3o14Y1EziIc=; b=ngObUiTncBWXVE
	5NkF6x21HRnQvTbMXesf3B1dnXkiEuJMcK+csEoU8i64z4RVAD6JZseZKadxd0iUISmKtrcXc5RB4
	MyRrm+P0uXfHv0nQoYWCeL/5IZGLYWmWXkVfyaf2DVuOwYgi3mJbfuq2sHp9EibTEoX5nfngtQw1I
	BweMq/xqbS6+1ovgDSZ6lZ/46zGwdQSblIGCjD/Z4LxdMfBGYC5r6HnMWQxMykIwYwAgfvP+pb9TQ
	MjgKN7aMhtFfhmXQGNvkDFC+8WQ085kV0jU2l74/mjdAMNlslCK5Ryi608SNWKRUv2EX2FfkPr7Wa
	bnLHdlyM20OHsS7IJoSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptnK-0002L0-FY; Tue, 23 Jul 2019 12:21:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptmQ-0001n3-CF
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:20:34 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723122029euoutp010a3192e8edd302fb61c6c4280cf9286a~0CJo8N_M12875728757euoutp01Z
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:20:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190723122029euoutp010a3192e8edd302fb61c6c4280cf9286a~0CJo8N_M12875728757euoutp01Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563884429;
 bh=R63VpqUTGKXGRrP/Yb1S0i4GgWkwdvgJxrH4IVxwNhM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=alUIgy8HfMBCrHlSu1PrgNIlc1vQFZxwBniyeQNWLkTRKeIczRmJVO5EOoZQkUtUc
 x+dP1KhI3NnT4qY+c9H3Hs1aOtXgb7UyQiYPjjC0YC1Jd6PMOWiftkigb9/J71p38E
 6bmUsrZVU+nkHNq75wBo/0h3uMrzT6UzwhXrAQyY=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190723122028eucas1p23bc8d09d1147876131f35f41d4918929~0CJoZ6rhy1082110821eucas1p2a;
 Tue, 23 Jul 2019 12:20:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id B4.5B.04298.C8BF63D5; Tue, 23
 Jul 2019 13:20:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98~0CJns5a7L2096920969eucas1p2A;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190723122027eusmtrp1969382de17b4f9b7cc567e489c022d2b~0CJnh3fqJ2543725437eusmtrp1B;
 Tue, 23 Jul 2019 12:20:27 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-85-5d36fb8cefdb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id BE.D8.04140.B8BF63D5; Tue, 23
 Jul 2019 13:20:27 +0100 (BST)
Received: from AMDC3555.DIGITAL.local (unknown [106.120.51.67]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723122026eusmtip2b8aa141a3c4a8a402bed53888c0e08d8~0CJm6ZS3E1733017330eusmtip2j;
 Tue, 23 Jul 2019 12:20:26 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH 08/11] arm: dts: exynos: Add parents and
 #interconnect-cells to Exynos4412
Date: Tue, 23 Jul 2019 14:20:13 +0200
Message-Id: <20190723122016.30279-9-a.swigon@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723122016.30279-1-a.swigon@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfyyUcRzue++Pe50ur6P5VPp1W7OukFb6bjWlWnv7p/KPtZpy8oZx6F5E
 al21ECecVqiVP0ztZKcLU5PChVJnUSi1MzFjk/JjrVk/nK/Kf8/zfJ/n+Xw+25ejVHZmORcT
 nyTq47VxalZB17b8sPsaZwLDNpWP8bippUaOHxRZGNwzNczgOzY7g99Oj7P4xhMri02OfBp3
 dFTJsfVzN4O7Ht9i8WSuDeGijgYZrrR9kuO+C/dYXFQ4wu5yE6zmK6zwsbueFRw5rTLhYdl5
 ofFLvUy4Wm1GwqR11SH5EcWOSDEuJkXU+weFK6J/DmQyiT1eqbktjTIDsqmykQsH/BZ4NZiH
 spGCU/H3ENjvG1hCphBcK3MwhEwi+P1yYtbGzUUa7Bqi30XwNLOZ+pcYGs5inL0svx+MBXVz
 aU/ehqCwdJx2Eoo3z5Lvtcjp8uDDIdvxlXJiml8Hl4xP5nQlHwwVr/NkZMPVUFH1bM7jwu+G
 7OeZLPG4w4viQdqJqVnPpZqbFPF/k0NeWxBZdS/UVx0ksgeMtlbLCfaG9kIjTbAEQ4/ImcAb
 EFjLbfM926G59Q3j7KH49WB57E/kYJhqz6RJ/RLoHXMnGywBU+0NishKyMpQEaiB0pmjJAhw
 saJ7vluAh0P32Xy0tmTBKSULTin5P7YUUWbkJSZLuihRCogXT/tJWp2UHB/ldyJBZ0Wzv6z9
 V+tEHZrujGhCPIfUi5VV9VvDVIw2RUrTNSHgKLWnMsQQGKZSRmrTzoj6hOP65DhRakIrOFrt
 pUxf1H9UxUdpk8RYUUwU9X9fZZzLcgNKVdwO7X53zpbk2ulJW7xHik/hEJ+AB16Ma9/OPMvZ
 X7aNyt3gYQ3bfHLZq8GKZNOVw4npO/pMjg+aBvW+9JiGdaM5Rpc6of9yQYbGsvRYXP71ct17
 t0RzZXhoSqVJ75YUMeq7YcDsI+yNDlK1HSjYhbeOXV0jlHT1rrywrS92j5qWorUBGkovaf8A
 7or2X2EDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKIsWRmVeSWpSXmKPExsVy+t/xe7rdv81iDT62qFgcOraV3WLjjPWs
 Fte/PGe1mH/kHKvFla/v2Sym793EZjHp/gQWi/PnN7BbbHp8jdXi8q45bBafe48wWsw4v4/J
 Yu2Ru+wWtxtXsFnMmPySzYHfY9OqTjaPO9f2sHnc7z7O5LF5Sb3HwXd7mDz6tqxi9Pi8SS6A
 PUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzWyshUSd/OJiU1J7MstUjfLkEv4++j
 dtaC6+IVvccOMjUwHhHqYuTgkBAwkdh3TquLkYtDSGApo8TvOxOYuhg5geISEh/X32CFsIUl
 /lzrYoMo+sQo8Wp7I1gRm4CnRM/EHawgCRGBU4wSW5efA6tiFtjEKHH3+ER2kCphgTiJC9N/
 go1iEVCVaO7Zywhi8wo4Sqw+2w+1Tl5i9YYDzCA2p4CTRNfRdjYQWwioZtv211D1ghInZz5h
 ATmbWUBdYv08IZAwM1Br89bZzBMYBWchqZqFUDULSdUCRuZVjCKppcW56bnFRnrFibnFpXnp
 esn5uZsYgVG67djPLTsYu94FH2IU4GBU4uHdsMc0Vog1say4MvcQowQHs5IIb2CDWawQb0pi
 ZVVqUX58UWlOavEhRlOg1yYyS4km5wMTSF5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU
 7NTUgtQimD4mDk6pBsYDj91+HuN46Pxgs+CKCwyvsw/9VV3XVJ2hE8zfynysZvXfkDU3d/fk
 70yOEF4jH/94xhnBpAvPP2dyRMjteOPRHHkxhe1DPnfnD63/F+QcHl6Z9mxtyfZvO1k6X8n5
 hfNUu6UuYNyjwXznFKupq3fRHb2Ers+df6+etD+V+nfzxjDbui+xUQeVWIozEg21mIuKEwER
 cQgI6AIAAA==
X-CMS-MailID: 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98
X-Msg-Generator: CA
X-RootMTR: 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122027eucas1p24b1d76e3139f7cc52614d7613ff9ba98@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_052030_550229_AD147D9F 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sw0312.kim@samsung.com, krzk@kernel.org, inki.dae@samsung.com,
 cw00.choi@samsung.com, myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIHR3byBmaWVsZHMgdHAgdGhlIEV4eW5vczQ0MTIgRFRTOgogIC0gcGFy
ZW50OiB0byBkZWNsYXJlIGNvbm5lY3Rpb25zIGJldHdlZW4gbm9kZXMgdGhhdCBhcmUgbm90IGlu
IGEKICAgIHBhcmVudC1jaGlsZCByZWxhdGlvbiBpbiBkZXZmcmVxOwogIC0gI2ludGVyY29ubmVj
dC1jZWxsczogcmVxdWlyZWQgYnkgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsuCgpQbGVhc2Ug
bm90ZSB0aGF0ICNpbnRlcmNvbm5lY3QtY2VsbHMgaXMgYWx3YXlzIHplcm8gYW5kIG5vZGUgSURz
IGFyZSBub3QKaGFyZGNvZGVkIGFueXdoZXJlLgoKU2lnbmVkLW9mZi1ieTogQXJ0dXIgxZp3aWdv
xYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMv
ZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCAxICsKIGFyY2gvYXJtL2Jvb3QvZHRzL2V4
eW5vczQ0MTIuZHRzaSAgICAgICAgICAgICAgIHwgOSArKysrKysrKysKIDIgZmlsZXMgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5v
czQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1v
ZHJvaWQtY29tbW9uLmR0c2kKaW5kZXggZWE1NWYzNzdkMTdjLi5iZGQ2MWFlODYxMDMgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCisr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCkBAIC0x
MDYsNiArMTA2LDcgQEAKICZidXNfbGVmdGJ1cyB7CiAJZGV2ZnJlcS1ldmVudHMgPSA8JnBwbXVf
bGVmdGJ1c18zPiwgPCZwcG11X3JpZ2h0YnVzXzM+OwogCXZkZC1zdXBwbHkgPSA8JmJ1Y2szX3Jl
Zz47CisJcGFyZW50ID0gPCZidXNfZG1jPjsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCmRpZmYg
LS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kgYi9hcmNoL2FybS9ib290
L2R0cy9leHlub3M0NDEyLmR0c2kKaW5kZXggZDIwZGIyZGZlOGUyLi5hNzBhNjcxYWNhY2QgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQ0MTIuZHRzaQorKysgYi9hcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kKQEAgLTM5MCw2ICszOTAsNyBAQAogCQkJY2xvY2tz
ID0gPCZjbG9jayBDTEtfRElWX0RNQz47CiAJCQljbG9jay1uYW1lcyA9ICJidXMiOwogCQkJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2RtY19vcHBfdGFibGU+OworCQkJI2ludGVyY29ubmVj
dC1jZWxscyA9IDwwPjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKQEAgLTM5OCw2
ICszOTksNyBAQAogCQkJY2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0FDUD47CiAJCQljbG9jay1u
YW1lcyA9ICJidXMiOwogCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2FjcF9vcHBfdGFi
bGU+OworCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxl
ZCI7CiAJCX07CiAKQEAgLTQwNiw2ICs0MDgsNyBAQAogCQkJY2xvY2tzID0gPCZjbG9jayBDTEtf
RElWX0MyQz47CiAJCQljbG9jay1uYW1lcyA9ICJidXMiOwogCQkJb3BlcmF0aW5nLXBvaW50cy12
MiA9IDwmYnVzX2RtY19vcHBfdGFibGU+OworCQkJI2ludGVyY29ubmVjdC1jZWxscyA9IDwwPjsK
IAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKQEAgLTQ1OSw2ICs0NjIsNyBAQAogCQkJ
Y2xvY2tzID0gPCZjbG9jayBDTEtfRElWX0dETD47CiAJCQljbG9jay1uYW1lcyA9ICJidXMiOwog
CQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsKKwkJCSNp
bnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9Owog
CkBAIC00NjcsNiArNDcxLDcgQEAKIAkJCWNsb2NrcyA9IDwmY2xvY2sgQ0xLX0RJVl9HRFI+Owog
CQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKIAkJCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmJ1c19s
ZWZ0YnVzX29wcF90YWJsZT47CisJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+OwogCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKIAkJfTsKIApAQCAtNDc1LDYgKzQ4MCw3IEBACiAJCQljbG9ja3Mg
PSA8JmNsb2NrIENMS19BQ0xLMTYwPjsKIAkJCWNsb2NrLW5hbWVzID0gImJ1cyI7CiAJCQlvcGVy
YXRpbmctcG9pbnRzLXYyID0gPCZidXNfZGlzcGxheV9vcHBfdGFibGU+OworCQkJI2ludGVyY29u
bmVjdC1jZWxscyA9IDwwPjsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKQEAgLTQ4
Myw2ICs0ODksNyBAQAogCQkJY2xvY2tzID0gPCZjbG9jayBDTEtfQUNMSzEzMz47CiAJCQljbG9j
ay1uYW1lcyA9ICJidXMiOwogCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2ZzeXNfb3Bw
X3RhYmxlPjsKKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47CiAJCQlzdGF0dXMgPSAiZGlz
YWJsZWQiOwogCQl9OwogCkBAIC00OTEsNiArNDk4LDcgQEAKIAkJCWNsb2NrcyA9IDwmY2xvY2sg
Q0xLX0FDTEsxMDA+OwogCQkJY2xvY2stbmFtZXMgPSAiYnVzIjsKIAkJCW9wZXJhdGluZy1wb2lu
dHMtdjIgPSA8JmJ1c19wZXJpX29wcF90YWJsZT47CisJCQkjaW50ZXJjb25uZWN0LWNlbGxzID0g
PDA+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIApAQCAtNDk5LDYgKzUwNyw3IEBA
CiAJCQljbG9ja3MgPSA8JmNsb2NrIENMS19TQ0xLX01GQz47CiAJCQljbG9jay1uYW1lcyA9ICJi
dXMiOwogCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmYnVzX2xlZnRidXNfb3BwX3RhYmxlPjsK
KwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MD47CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwog
CQl9OwogCi0tIAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
