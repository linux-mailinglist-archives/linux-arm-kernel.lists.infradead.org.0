Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3834E1B0C22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mT3WPgeC2b4KHjFKXCOkWuIDCuI/T3dkvvhh+j3eLPk=; b=GE7wziIzGrFLA0
	p3VQXLqSSiyopryAOqr8QWq8SzMfs1pMBpaJDxlJCcpUPeWV/Q4duq3qsiiSkcfvRWAJ5629IBMyN
	u3BP7kjoJ/LihbUbeV6QM7P4b45n9ETqSHgy00HQi9w7YKdwYVukKYYEHQKqMwDTTqewZ28dWsWDP
	alrESKZYT/Z+U81r7lBdEXAH4n7Y1dhr2YpiPHvKPPmocxwwAbgIc+KBUAe+6OsLEms7KuwXHjIyZ
	HRftKbAnmUBCgkMpZ5IuzPahChJgYNSi1yUk2VKvbo4qFN17F9hMrp6wjMvIQkHOjoKQwmQhaNdxa
	cA1qBGUnkbFwYL1b0T1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW3K-0003zR-LD; Mon, 20 Apr 2020 13:01:34 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2H-0003Fy-Ay
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id v8so10741659wma.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vgd6dfjp6nCI+xgQ8mfqiGKeHRAidwVE6+NkPB9dyqo=;
 b=MHh8An/jJbmu06oPdxU3vbyYeSkZ6nK4TmBkyUo5RjOcq0uiPqALpMiCqGElcrbIXB
 adFntsiOtqTlaGSNevjvxrKKsMXAIcu4bU7BqmMK/ZfMR/7PuozYaw8dJlUJiLuE1oae
 OTyVySXUWJoo9JpNWF9AnrSkyNKYd5Kwz/6h7cYoWZlyqggDqrAyEoz1toUP2HzgPf92
 UnUi8ADqylwSUtovmBuf3HkSTWrPgqur17FmIa8ANWV1ImlLJtWNlCpeIUQlKPE5qmr9
 ZPxtiyII3+B1+O8xQ2XrS5hEZUjdz1TLVsEmdBoG+u/Fy5w3K74Iv3D+tAluEAVaaZ8i
 PGtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vgd6dfjp6nCI+xgQ8mfqiGKeHRAidwVE6+NkPB9dyqo=;
 b=MyceO56GUjqKaxFpSKA831GG03juDfjp/s1MTALJPqF5ey8yBm7A0GrfwkELBj7OgN
 s3Qzyn8e8OkLDaBwe+pIkPPApsXuqX9nWPLRvIs24sINinPXjgEfrOh2k7LveGkO739B
 qmS8xkIL/oH4vWPJ+M+0BK3ETiOS61cB1RE9aHvZRrIle+GM4+lN9Qf7XvfHMpUbn6zA
 G9CEODhxl9YD9jY7sLGMQPdCp0cGyfnLHqngS78mJph+//YT+IZCsP+RFWy9V/4uwPZN
 +cBpl97TPL/NF1LX/FBRXSiw3y1ltdeX7+WdOxsbnUEmP1Gzg2ya5i2HHLyk/B3LAJ35
 Auvw==
X-Gm-Message-State: AGi0Pua4JJuNqQJ8KhvZSTaqcfoz4h+Vb+SvGkYgd9ocxFCO06l+x4eQ
 T984d5RdKAdQQYGLslwSlF0=
X-Google-Smtp-Source: APiQypI/8x9hL2UdtaDvh+QjznzGiOG4rspbWIfpA7WCOe6aQXH9bKCB1Q1rc0DXui25cmLcgQjYNQ==
X-Received: by 2002:a05:600c:da:: with SMTP id
 u26mr18128969wmm.48.1587387627925; 
 Mon, 20 Apr 2020 06:00:27 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:27 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 3/9] arm64: dts: allwinner: h6: Add CPU Operating
 Performance Points table
Date: Mon, 20 Apr 2020 15:00:15 +0200
Message-Id: <20200420130021.3841-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060029_897265_DC980E84 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpBZGQgYW4gT3BlcmF0aW5n
IFBlcmZvcm1hbmNlIFBvaW50cyB0YWJsZSBmb3IgdGhlIENQVSBjb3JlcyB0bwplbmFibGUgRHlu
YW1pYyBWb2x0YWdlICYgRnJlcXVlbmN5IFNjYWxpbmcgb24gdGhlIEg2LgoKU2lnbmVkLW9mZi1i
eTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+ClNpZ25lZC1vZmYtYnk6IENsw6lt
ZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpIHwgMTIxICsrKysrKysrKysrKysrKysrKwogYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgIHwgICA0ICsKIDIgZmls
ZXMgY2hhbmdlZCwgMTI1IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1LW9wcC5kdHNpCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWNwdS1vcHAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1jcHUtb3BwLmR0c2kKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi45ZWJkOTdiMDRiMWEKLS0tIC9k
ZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1
LW9wcC5kdHNpCkBAIC0wLDAgKzEsMTIxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIE9SIE1JVCkKKy8vIENvcHlyaWdodCAoQykgMjAyMCBPbmRyZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4KKy8vIENvcHlyaWdodCAoQykgMjAyMCBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgorCisvIHsKKwljcHVfb3BwX3RhYmxlOiBjcHUtb3BwLXRh
YmxlIHsKKwkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LW9wZXJhdGluZy1wb2lu
dHMiOworCQludm1lbS1jZWxscyA9IDwmY3B1X3NwZWVkX2dyYWRlPjsKKwkJb3BwLXNoYXJlZDsK
KworCQlvcHBANDgwMDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyog
OCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw0ODAwMDAwMDA+OworCisJ
CQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVl
ZDEgPSA8ODIwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDgyMDAwMD47CisJCX07
CisKKwkJb3BwQDcyMDAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8q
IDggMzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NzIwMDAwMDAwPjsKKwor
CQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8ODgwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3Bl
ZWQxID0gPDgyMDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw4MjAwMDA+OworCQl9
OworCisJCW9wcEA4MTYwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAv
KiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgxNjAwMDAwMD47CisK
KwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDg4MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNw
ZWVkMSA9IDw4MjAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8ODIwMDAwPjsKKwkJ
fTsKKworCQlvcHBAODg4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0Pjsg
LyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4ODgwMDAwMDA+Owor
CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1z
cGVlZDEgPSA8ODIwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDgyMDAwMD47CisJ
CX07CisKKwkJb3BwQDEwODAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+
OyAvKiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEwODAwMDAwMDA+
OworCisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw5NDAwMDA+OworCQkJb3BwLW1pY3Jvdm9s
dC1zcGVlZDEgPSA8ODgwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDg4MDAwMD47
CisJCX07CisKKwkJb3BwQDEzMjAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQx
NDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEzMjAwMDAw
MDA+OworCisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDwxMDAwMDAwPjsKKwkJCW9wcC1taWNy
b3ZvbHQtc3BlZWQxID0gPDk0MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw5NDAw
MDA+OworCQl9OworCisJCW9wcEAxNDg4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8
MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwxNDg4
MDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTA2MDAwMD47CisJCQlvcHAt
bWljcm92b2x0LXNwZWVkMSA9IDwxMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0g
PDEwMDAwMDA+OworCQl9OworCisJCW9wcEAxNjA4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3kt
bnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0
IDwxNjA4MDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTA5MDAwMD47CisJ
CQlvcHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMDMwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3Bl
ZWQyID0gPDEwMzAwMDA+OworCQl9OworCisJCW9wcEAxNzA0MDAwMDAwIHsKKwkJCWNsb2NrLWxh
dGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2Jp
dHMvIDY0IDwxNzA0MDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTEyMDAw
MD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMDYwMDAwPjsKKwkJCW9wcC1taWNyb3Zv
bHQtc3BlZWQyID0gPDEwNjAwMDA+OworCQl9OworCisJCW9wcEAxODAwMDAwMDAwIHsKKwkJCWNs
b2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6
ID0gL2JpdHMvIDY0IDwxODAwMDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8
MTE2MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMTAwMDAwPjsKKwkJCW9wcC1t
aWNyb3ZvbHQtc3BlZWQyID0gPDExMDAwMDA+OworCQl9OworCX07Cit9OworCismY3B1MCB7CisJ
b3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1X29wcF90YWJsZT47CisJI2Nvb2xpbmctY2VsbHMg
PSA8Mj47Cit9OworCismY3B1MSB7CisJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1X29wcF90
YWJsZT47CisJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cit9OworCismY3B1MiB7CisJb3BlcmF0aW5n
LXBvaW50cy12MiA9IDwmY3B1X29wcF90YWJsZT47CisJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cit9
OworCismY3B1MyB7CisJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1X29wcF90YWJsZT47CisJ
I2Nvb2xpbmctY2VsbHMgPSA8Mj47Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDYuZHRzaQppbmRleCA2MGRhMTYyNzc3MmIuLjgzZTMyZjljNDk3NyAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTI1OCw2ICsy
NTgsMTAgQEAKIAkJCXRoc19jYWxpYnJhdGlvbjogdGhlcm1hbC1zZW5zb3ItY2FsaWJyYXRpb25A
MTQgewogCQkJCXJlZyA9IDwweDE0IDB4OD47CiAJCQl9OworCisJCQljcHVfc3BlZWRfZ3JhZGU6
IGNwdS1zcGVlZC1ncmFkZUAxYyB7CisJCQkJcmVnID0gPDB4MWMgMHg0PjsKKwkJCX07CiAJCX07
CiAKIAkJd2F0Y2hkb2c6IHdhdGNoZG9nQDMwMDkwYTAgewotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
