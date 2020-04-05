Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDEE19ED05
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Toax+zDQoQZF9rGRX+QX2CAKOmlEV8OY6tInizZOsnA=; b=meG/7WAJPfY1sM
	BeqmF1hUKS5aIcGcNJ53w24JVEJHVLXwvaur6iRoaexcFVqfFS34dWz4Z+KN7fu7F6RVZNDoNi9vX
	yZOFh5vSONeKq+WDsU4IZ9Ls8PZL4XorWCAqgoviBfG5cSSOxw/6SZPAmFKrmyloBoSLVLScymnXF
	tg/L0aSCKL4rWCxc5V+XTeJBGadihqYxlSTeUASGyrxYJ/wnRfmLoYXS9CqExnOI+eYcd7fzp7Qs6
	RQEVV7s6cKvqcjVIsa1JXoc/q2sryhO+0JUX+mJqH6R2Nt+PrgvR6PM14McQUb4BQukHd6M3Eoy7k
	jUT8CHGwQlV2dzZS4E3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9Cj-0002TJ-8A; Sun, 05 Apr 2020 17:37:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Bq-0001YC-7k
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id g21so67839wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L0DunLPluftak3iWs4RwKKsIlFm/wwMME3GIYNozwG4=;
 b=vJNeFjzqnEge1LdAzSJNbFLcawhL3QT0wKLY7vMTu7Ihu/WIl2IHLPmvtp6Qlmmjjd
 t2bWkjwnu20yWLdVzQk5tnQDEwsMRcgNqnJ6hMRxIYDqK1IYX0cWiz/j7xZg5ahn2QND
 fpcp/3A7Cj1J6T73XkTprCLph57tkSe9HEHfGGl7dL1V/QnawYSLCDVj0YYTd5iFqoe/
 SSA2wANrtUVjHHfT+IuU6A7wZKm+zeheIbBcF4sRIzvEnRRRm0v2OcAGS/Z3C0u80xdF
 pypDpMk8eAO/RFJr8RyhW5+1+uHoDHPnKMb3EEvtcetDy0UitYZ/8GF5Ufy1s4pdsPbB
 JUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L0DunLPluftak3iWs4RwKKsIlFm/wwMME3GIYNozwG4=;
 b=fKINO9e9iEEwlx3gSuLgP72rOYvZ9qVEgj3gEQ18EwhBjPMdWmQyFdcTegWuEOJxxE
 d9lGv9LSiCsIUL07QV2iUD6ra15ozFOOh7+260NLK+OqT4xmaXtv1ohVjiFA5ry038zt
 /7yLUqwGyS0rwhWcnPdvRQALtNgEHI25a6Gr2lSRCzfN0REFyQJzytpIS6mQ1A4U1+Sa
 RM6xsh20w0YjO+agR+UCPuSAriWnBhDK/l7mICXdZYEn+59HDg4CMo73NnuEoiRo3bHR
 jw8pcqPYKfEeCll6AnKJ0oHk5914jDchLcLO0zlEGwxs4r2lKmxJveRIfMXtNafskwTl
 ltPw==
X-Gm-Message-State: AGi0PubPPHWxDreE9gmXZEBIhQTIl+zchd9Ik/plBMAK4CuLOcKramQJ
 mjcpBjRYGE4JTJsumjWpyZg=
X-Google-Smtp-Source: APiQypKie1AjmHji8uxru4+YXf87oVzJ+RI9Jw89I55qcDvT3plodytSUZYLll13f39VHu89IXLLVQ==
X-Received: by 2002:a7b:c051:: with SMTP id u17mr17828409wmc.129.1586108168281; 
 Sun, 05 Apr 2020 10:36:08 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:07 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 3/7] arm64: dts: allwinner: h6: Add CPU Operating
 Performance Points table
Date: Sun,  5 Apr 2020 19:35:57 +0200
Message-Id: <20200405173601.24331-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103610_298359_72FA1DE3 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi44YzFlNDEzYzZhZjkKLS0tIC9k
ZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtY3B1
LW9wcC5kdHNpCkBAIC0wLDAgKzEsMTIxIEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIE9SIE1JVCkKKy8vIENvcHlyaWdodCAoQykgMjAyMCBPbmRyZWogSmlybWFuIDxt
ZWdvdXNAbWVnb3VzLmNvbT4KKy8vIENvcHlyaWdodCAoQykgMjAyMCBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgorCisvIHsKKwljcHUwX29wcF90YWJsZTogb3BwX3RhYmxl
MCB7CisJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1vcGVyYXRpbmctcG9pbnRz
IjsKKwkJbnZtZW0tY2VsbHMgPSA8JnNwZWVkYmluX2VmdXNlPjsKKwkJb3BwLXNoYXJlZDsKKwor
CQlvcHBANDgwMDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAz
MmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw0ODAwMDAwMDA+OworCisJCQlv
cHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEg
PSA8ODIwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDgyMDAwMD47CisJCX07CisK
KwkJb3BwQDcyMDAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDgg
MzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8NzIwMDAwMDAwPjsKKworCQkJ
b3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8ODgwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQx
ID0gPDgyMDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw4MjAwMDA+OworCQl9Owor
CisJCW9wcEA4MTYwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAvKiA4
IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDgxNjAwMDAwMD47CisKKwkJ
CW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDg4MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVk
MSA9IDw4MjAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8ODIwMDAwPjsKKwkJfTsK
KworCQlvcHBAODg4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyog
OCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4ODgwMDAwMDA+OworCisJ
CQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw4ODAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVl
ZDEgPSA8ODIwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDgyMDAwMD47CisJCX07
CisKKwkJb3BwQDEwODAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAv
KiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEwODAwMDAwMDA+Owor
CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDw5NDAwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1z
cGVlZDEgPSA8ODgwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDg4MDAwMD47CisJ
CX07CisKKwkJb3BwQDEzMjAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+
OyAvKiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEzMjAwMDAwMDA+
OworCisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDwxMDAwMDAwPjsKKwkJCW9wcC1taWNyb3Zv
bHQtc3BlZWQxID0gPDk0MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDw5NDAwMDA+
OworCQl9OworCisJCW9wcEAxNDg4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0
MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwxNDg4MDAw
MDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTA2MDAwMD47CisJCQlvcHAtbWlj
cm92b2x0LXNwZWVkMSA9IDwxMDAwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDEw
MDAwMDA+OworCQl9OworCisJCW9wcEAxNjA4MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVuY3ktbnMg
PSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDwx
NjA4MDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTA5MDAwMD47CisJCQlv
cHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMDMwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQy
ID0gPDEwMzAwMDA+OworCQl9OworCisJCW9wcEAxNzA0MDAwMDAwIHsKKwkJCWNsb2NrLWxhdGVu
Y3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2JpdHMv
IDY0IDwxNzA0MDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTEyMDAwMD47
CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMDYwMDAwPjsKKwkJCW9wcC1taWNyb3ZvbHQt
c3BlZWQyID0gPDEwNjAwMDA+OworCQl9OworCisJCW9wcEAxODAwMDAwMDAwIHsKKwkJCWNsb2Nr
LWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0g
L2JpdHMvIDY0IDwxODAwMDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTE2
MDAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMTAwMDAwPjsKKwkJCW9wcC1taWNy
b3ZvbHQtc3BlZWQyID0gPDExMDAwMDA+OworCQl9OworCX07Cit9OworCismY3B1MCB7CisJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+OworCSNjb29saW5nLWNlbGxzID0g
PDI+OworfTsKKworJmNwdTEgeworCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdTBfb3BwX3Rh
YmxlPjsKKwkjY29vbGluZy1jZWxscyA9IDwyPjsKK307CisKKyZjcHUyIHsKKwlvcGVyYXRpbmct
cG9pbnRzLXYyID0gPCZjcHUwX29wcF90YWJsZT47CisJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cit9
OworCismY3B1MyB7CisJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmY3B1MF9vcHBfdGFibGU+Owor
CSNjb29saW5nLWNlbGxzID0gPDI+OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggZTBkZDA3NTdiZTBiLi42YjdhZjg1ODYxNGEgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCkBAIC0yNTMsNiAr
MjUzLDEwIEBACiAJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJCSNzaXplLWNlbGxzID0gPDE+
OwogCisJCQlzcGVlZGJpbl9lZnVzZTogc3BlZWRAMWMgeworCQkJCXJlZyA9IDwweDFjIDB4ND47
CisJCQl9OworCiAJCQl0aHNfY2FsaWJyYXRpb246IHRoZXJtYWwtc2Vuc29yLWNhbGlicmF0aW9u
QDE0IHsKIAkJCQlyZWcgPSA8MHgxNCAweDg+OwogCQkJfTsKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
