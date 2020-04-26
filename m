Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6E51B8FC5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xBTSpR60jq2Zlb+kpCpsgFCms2vfacnYt8e9JNFNNBE=; b=obtOCC9/+xEF22
	TOV+r/UOWuNAJWtgFOryGEqvT1nF5seAM6u5LoTZBfsiemONS1c5oLNldHABtGjnxXwg7dHlsDrJj
	ChA4yO8NyYlgPTspdxqwC9JB2B2f0R3hKhOCY5wle2hvdk8pWsT4dof6nfRcYta1e+JFA+6S7LMFk
	3gHFQLWn9RFUzovtHQynh6CbLG3EKbHKu8M5OM/qxKEjf9MVodxCi33WBfj5eaagU7maFVAflEv2C
	WwZtfL6SqVqrgneE/IrOlK5lpA/c9EadJ1fvm3VhJXjAE+bVQWFt4H/ltF8u0Qp5uGm0/PK6ql0hg
	Ojwyqy0Cm8g3Dia+zYuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgDr-0004Wo-L2; Sun, 26 Apr 2020 12:17:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgDh-0004Ve-4d
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:17:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id x25so16406298wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Sxihwdh/vZTDlHhcfbgqZo1sbFRiOWINuc6LYLa6Dg=;
 b=cnCjBbpR8IGBWghzQy7pzJ79C3bQ+W8CN/6oL1B6ClMIyAYxc8q4NatU/ypJACIyAF
 nUiiRLDFkPvDhfqF+gW1n4Sk3BJ56RXR2KPPnzV4mMjkzmO45bYXzn/K7IxfK26znoqD
 yNSOUvW06hJZ8yhw1S3Bu1Ybqoh9xFzUu2AH9bNDs5m3ElFI6VOGk7rB7aUazCujD6vr
 4/wCM6E89GCyXGaigOyl2tVo21QCmjPVNw3WHpJMxI+hpwS6SgXzk/E2Ys2KCUNjBr8M
 RKlBUhWNizvIcEkQKjZhFp0UZjs9HGd4BYoKurQJ8HIqSRe6P+wsurYX+YuToQpKqEhq
 0VgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3Sxihwdh/vZTDlHhcfbgqZo1sbFRiOWINuc6LYLa6Dg=;
 b=blS1Cazj5GmlZF2SW3X8mafj/UIl1idI8Kn7LCj2AEZZnoPR8BDj88y7UDduMv27mh
 lHseIwzyfWSYFSOFH7ydqYW5sctIbb95KyfR4xNOTyyh+aY3vFPLRXkNLcxsvz0ay3Jo
 1eW2v3GXX/KrdPfkaUguMJYEvRvPACX4bgOcy2v50AhHpv5yMzifsx/KxkM1yJxORkCQ
 5By/UYIMQ2Q+eg8HSbtyha8nhZGR0l1DNDSoX1VBc5KpTdhJKiLbqygkgKM2ZfcRVDt6
 VGzyxgD5rOEyNZ6LDFtwdQjZ5AnU+SryRY04d1/9e/DMskxIp9mLZh0zWf5iUMnkLvnB
 Ad8w==
X-Gm-Message-State: AGi0PubKTUn/Y7TOPQa1qZv5DTqaufE5n/Pnjex1OKlNyg4EHOdFwoG3
 5vxaQ81GnCltNvxpyoW8tUI=
X-Google-Smtp-Source: APiQypK1dC9vKN4ibJZj2tHhTaucdfNnnIpxgq4lcOaqXLjiJ04+E6zGPoHFH8Opirus+RdAEAwdSg==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr20403256wmm.131.1587903431752; 
 Sun, 26 Apr 2020 05:17:11 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 m8sm17899817wrx.54.2020.04.26.05.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:17:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] arm64: dts: allwinner: h6: Use dedicated CPU OPP table for
 Tanix TX6
Date: Sun, 26 Apr 2020 14:17:09 +0200
Message-Id: <20200426121709.1216-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_051713_209167_0FD5A81A 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Piotr Oniszczuk <warpme@o2.pl>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGFuaXggVFg2IGhhcyBhIGZpeGVkIHJlZ3VsYXRvci4gQXMgRFZGUyBpcyBpbnN0cnVjdGVkIHRv
IGNoYW5nZQp2b2x0YWdlIHRvIG1lZXQgT1BQIHRhYmxlLiBUaGUgRFZGUyBpcyBub3Qgd29ya2lu
ZyBhcyBleHBlY3RlZC4KCkludHJvZHVjZSBhIGRlZGljYXRlZCBPUFAgVGFibGUgd2hlcmUgdm9s
dGFnZSBhcmUgZXF1YWxzIHRvCnRoZSBmaXhlZCByZWd1bGF0b3IuCgpSZXBvcnRlZC1ieTogUGlv
dHIgT25pc3pjenVrIDx3YXJwbWVAbzIucGw+CkZpeGVzOiBhZGQxZTI3ZmI3MDMgKCJhcm02NDog
ZHRzOiBhbGx3aW5uZXI6IGg2OiBFbmFibGUgQ1BVIG9wcCB0YWJsZXMgZm9yIFRhbml4IFRYNiIp
ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0t
LQogLi4uL3N1bjUwaS1oNi10YW5peC10eDYtY3B1LW9wcC5kdHNpICAgICAgICAgIHwgMTE2ICsr
KysrKysrKysrKysrKysrKwogLi4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5k
dHMgICAgIHwgICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDExNyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5u
ZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni1jcHUtb3BwLmR0c2kKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LWNwdS1vcHAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYtY3B1LW9w
cC5kdHNpCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMDYyOTQwMTE1
NTYzCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXRhbml4LXR4Ni1jcHUtb3BwLmR0c2kKQEAgLTAsMCArMSwxMTYgQEAKKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLy8gQ29weXJpZ2h0IChDKSAy
MDIwIENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CisKKy8geworCWNwdV9v
cHBfdGFibGU6IGNwdS1vcHAtdGFibGUgeworCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41
MGktaDYtb3BlcmF0aW5nLXBvaW50cyI7CisJCW52bWVtLWNlbGxzID0gPCZjcHVfc3BlZWRfZ3Jh
ZGU+OworCQlvcHAtc2hhcmVkOworCisJCW9wcEA0ODAwMDAwMDAgeworCQkJY2xvY2stbGF0ZW5j
eS1ucyA9IDwyNDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAtaHogPSAvYml0cy8g
NjQgPDQ4MDAwMDAwMD47CisKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+Owor
CQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTEzNTAwMD47CisJCQlvcHAtbWljcm92b2x0LXNw
ZWVkMiA9IDwxMTM1MDAwPjsKKwkJfTsKKworCQlvcHBANzIwMDAwMDAwIHsKKwkJCWNsb2NrLWxh
dGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLworCQkJb3BwLWh6ID0gL2Jp
dHMvIDY0IDw3MjAwMDAwMDA+OworCisJCQlvcHAtbWljcm92b2x0LXNwZWVkMCA9IDwxMTM1MDAw
PjsKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9s
dC1zcGVlZDIgPSA8MTEzNTAwMD47CisJCX07CisKKwkJb3BwQDgxNjAwMDAwMCB7CisJCQljbG9j
ay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9
IC9iaXRzLyA2NCA8ODE2MDAwMDAwPjsKKworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTEz
NTAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMSA9IDwxMTM1MDAwPjsKKwkJCW9wcC1taWNy
b3ZvbHQtc3BlZWQyID0gPDExMzUwMDA+OworCQl9OworCisJCW9wcEA4ODgwMDAwMDAgeworCQkJ
Y2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCisJCQlvcHAt
aHogPSAvYml0cy8gNjQgPDg4ODAwMDAwMD47CisKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQwID0g
PDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTEzNTAwMD47CisJCQlvcHAt
bWljcm92b2x0LXNwZWVkMiA9IDwxMTM1MDAwPjsKKwkJfTsKKworCQlvcHBAMTA4MDAwMDAwMCB7
CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KKwkJ
CW9wcC1oeiA9IC9iaXRzLyA2NCA8MTA4MDAwMDAwMD47CisKKwkJCW9wcC1taWNyb3ZvbHQtc3Bl
ZWQwID0gPDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTEzNTAwMD47CisJ
CQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDwxMTM1MDAwPjsKKwkJfTsKKworCQlvcHBAMTMyMDAw
MDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMg
Ki8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTMyMDAwMDAwMD47CisKKwkJCW9wcC1taWNyb3Zv
bHQtc3BlZWQwID0gPDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTEzNTAw
MD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDwxMTM1MDAwPjsKKwkJfTsKKworCQlvcHBA
MTQ4ODAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBl
cmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTQ4ODAwMDAwMD47CisKKwkJCW9wcC1t
aWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8
MTEzNTAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDwxMTM1MDAwPjsKKwkJfTsKKwor
CQlvcHBAMTYwODAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDgg
MzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTYwODAwMDAwMD47CisKKwkJ
CW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9sdC1zcGVl
ZDEgPSA8MTEzNTAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDwxMTM1MDAwPjsKKwkJ
fTsKKworCQlvcHBAMTcwNDAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47
IC8qIDggMzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTcwNDAwMDAwMD47
CisKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+OworCQkJb3BwLW1pY3Jvdm9s
dC1zcGVlZDEgPSA8MTEzNTAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDwxMTM1MDAw
PjsKKwkJfTsKKworCQlvcHBAMTgwMDAwMDAwMCB7CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0
NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTgwMDAw
MDAwMD47CisKKwkJCW9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+OworCQkJb3BwLW1p
Y3Jvdm9sdC1zcGVlZDEgPSA8MTEzNTAwMD47CisJCQlvcHAtbWljcm92b2x0LXNwZWVkMiA9IDwx
MTM1MDAwPjsKKwkJfTsKKwl9OworfTsKKworJmNwdTAgeworCW9wZXJhdGluZy1wb2ludHMtdjIg
PSA8JmNwdV9vcHBfdGFibGU+OworfTsKKworJmNwdTEgeworCW9wZXJhdGluZy1wb2ludHMtdjIg
PSA8JmNwdV9vcHBfdGFibGU+OworfTsKKworJmNwdTIgeworCW9wZXJhdGluZy1wb2ludHMtdjIg
PSA8JmNwdV9vcHBfdGFibGU+OworfTsKKworJmNwdTMgeworCW9wZXJhdGluZy1wb2ludHMtdjIg
PSA8JmNwdV9vcHBfdGFibGU+OworfTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4Ni5kdHMKaW5kZXggYmU4MTMzMGRiMTRmLi4zZWFh
NGY0OWUzZDMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi10YW5peC10eDYuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi10YW5peC10eDYuZHRzCkBAIC00LDcgKzQsNyBAQAogL2R0cy12MS87CiAKICNpbmNs
dWRlICJzdW41MGktaDYuZHRzaSIKLSNpbmNsdWRlICJzdW41MGktaDYtY3B1LW9wcC5kdHNpIgor
I2lubGN1ZGUgInN1bjUwaS1oNi10YW5peC10eDYtY3B1LW9wcC5kdHNpIgogCiAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
