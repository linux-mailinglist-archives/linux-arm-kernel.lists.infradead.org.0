Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802B6B7EFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 18:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gZDA6GIn8YxRGfrl7bdXGm3cNaMa9kZWBsRaTCEj/zI=; b=HSuOJby5NCg+1LtZh15nApxtJS
	1L2OR/2JugBf0qIeNPxrCWTAkw88caJ/vXx5TrJ0+0LM4tMV7CKMPu8+xxYLL7dZ63OkBgGnCvaFp
	N88bz1nUdZQTWhtYOt8AH89sTpNYB8YtIx6BMwb6ZAG3v1DMnjeQuzqcr6tJ1E6UzvvXqrNlJHOXs
	fkDleA9kCYrRAD/qDWAmt20TOivxTHkBtzVF4o5vt7d+mRerO0jhAb6hRygCqC1xIJNYmz/u+KRaC
	BTrmPH3FNT+IuhftZ2hKaMGvK9mlW4ICPSq+rqzWzXNzics2nEYcMEIvkhs4D9VKfG5LKrFt7QdfQ
	nGqdoCpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAzEM-00037K-Cb; Thu, 19 Sep 2019 16:24:30 +0000
Received: from vulcan.natalenko.name ([104.207.131.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAzE5-00036B-0x; Thu, 19 Sep 2019 16:24:15 +0000
Received: from mail.natalenko.name (vulcan.natalenko.name
 [IPv6:fe80::5400:ff:fe0c:dfa0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id C32835E2612;
 Thu, 19 Sep 2019 18:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1568910244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IsJrJR9edgNTBA9PLlDz/xnT9d6f7b7QwgTsriOltYw=;
 b=loWH/WDtnkYFpLIMhrxFmREeM4c/QkbSVWkZLi5MIJIA9yKvnReyF/jZVGKgWlxwY0Q6KB
 tSK3cpWu8XmKzBZyXBj4nfoU5yN+l1bmqGKqq1MMmNryawRUK+M5LEYaBeYX796Q6yKpIq
 l5ybNtGzt+SKM37Zrkrv2VSS1KyDA/4=
MIME-Version: 1.0
Date: Thu, 19 Sep 2019 18:24:04 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-mediatek@lists.infradead.org
Subject: mt76x2e hardware restart
Message-ID: <deaafa7a3e9ea2111ebb5106430849c6@natalenko.name>
X-Sender: oleksandr@natalenko.name
User-Agent: Roundcube Webmail/1.3.10
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name; 
 s=arc-20170712; t=1568910244;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IsJrJR9edgNTBA9PLlDz/xnT9d6f7b7QwgTsriOltYw=;
 b=mgI2Q2q5EsLvn5vBzuOrygwCRA2r3Z4tTBzw/ENCbkOUtuhHRZvBFvJlkiDeKgHoNM8L57
 n3RFkP4Eoy2ncUpUczQmlU9xtBlz7FeRuXZ5v+SGSBNktzCsovhNWLqJSOKos+g/F4Dnzz
 39pyVVUPsO0r9TuiTqjGlnxP++AfJjA=
ARC-Seal: i=1; s=arc-20170712; d=natalenko.name; t=1568910244; a=rsa-sha256;
 cv=none;
 b=CHSLf2V6kh3lRldJ3FecPHYyY//KupbfEzWvG++8+qEysxN+Rvb2YVvxIkcM+fJ+b6PLYa
 SBXqq8QVA5XiZYSJNwLqUFC5Swd2yMZdlW9Ur7B5yrHyXQKGoVIHCnMDaTQhLR8xFDUdeF
 h18oEZ6zq+fpK9KFH1FTqiEQ1fpHt/4=
ARC-Authentication-Results: i=1; vulcan.natalenko.name;
 auth=pass smtp.auth=oleksandr@natalenko.name
 smtp.mailfrom=oleksandr@natalenko.name
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_092413_376374_B6D09649 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.207.131.136 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkuCgpSZWNlbnRseSwgSSd2ZSBnb3QgdGhlIGZvbGxvd2luZyBjYXJkOgoKMDE6MDAuMCBOZXR3
b3JrIGNvbnRyb2xsZXI6IE1FRElBVEVLIENvcnAuIERldmljZSA3NjEyCiAgICAgICAgIFN1YnN5
c3RlbTogTUVESUFURUsgQ29ycC4gRGV2aWNlIDc2MTIKICAgICAgICAgRmxhZ3M6IGJ1cyBtYXN0
ZXIsIGZhc3QgZGV2c2VsLCBsYXRlbmN5IDAsIElSUSAxNgogICAgICAgICBNZW1vcnkgYXQgODEy
MDAwMDAgKDY0LWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9MU1dCiAgICAgICAgIEV4cGFu
c2lvbiBST00gYXQgODEzMDAwMDAgW2Rpc2FibGVkXSBbc2l6ZT02NEtdCiAgICAgICAgIENhcGFi
aWxpdGllczogWzQwXSBQb3dlciBNYW5hZ2VtZW50IHZlcnNpb24gMwogICAgICAgICBDYXBhYmls
aXRpZXM6IFs1MF0gTVNJOiBFbmFibGUtIENvdW50PTEvMSBNYXNrYWJsZS0gNjRiaXQrCiAgICAg
ICAgIENhcGFiaWxpdGllczogWzcwXSBFeHByZXNzIEVuZHBvaW50LCBNU0kgMDAKICAgICAgICAg
Q2FwYWJpbGl0aWVzOiBbMTAwXSBBZHZhbmNlZCBFcnJvciBSZXBvcnRpbmcKICAgICAgICAgQ2Fw
YWJpbGl0aWVzOiBbMTQ4XSBEZXZpY2UgU2VyaWFsIE51bWJlciAwMC0wMC0wMC0wMC0wMC0wMC0w
MC0wMAogICAgICAgICBDYXBhYmlsaXRpZXM6IFsxNThdIExhdGVuY3kgVG9sZXJhbmNlIFJlcG9y
dGluZwogICAgICAgICBDYXBhYmlsaXRpZXM6IFsxNjBdIEwxIFBNIFN1YnN0YXRlcwogICAgICAg
ICBLZXJuZWwgZHJpdmVyIGluIHVzZTogbXQ3NngyZQogICAgICAgICBLZXJuZWwgbW9kdWxlczog
bXQ3NngyZQoKSSB0cnkgdG8gdXNlIGl0IGFzIGFuIGFjY2VzcyBwb2ludCB3aXRoIHRoZSBmb2xs
b3dpbmcgY29uZmlndXJhdGlvbjoKCmludGVyZmFjZT13bHAxczAKZHJpdmVyPW5sODAyMTEKc3Np
ZD1zb21lYXAKY2hhbm5lbD0zNgpub3NjYW49MQpod19tb2RlPWEKaWVlZTgwMjExbj0xCnJlcXVp
cmVfaHQ9MQppZWVlODAyMTFhYz0xCnJlcXVpcmVfdmh0PTEKdmh0X29wZXJfY2h3aWR0aD0xCnZo
dF9jYXBhYj1bU0hPUlQtR0ktODBdW1JYLVNUQkMtMV1bUlgtQU5URU5OQS1QQVRURVJOXVtUWC1B
TlRFTk5BLVBBVFRFUk5dCnZodF9vcGVyX2NlbnRyX2ZyZXFfc2VnMF9pZHg9NDIKYXV0aF9hbGdz
PTEKd3BhPTIKd3BhX3Bhc3NwaHJhc2U9c29tZXBzd2QKd3BhX2tleV9tZ210PVdQQS1QU0sKcnNu
X3BhaXJ3aXNlPUNDTVAKbWFjYWRkcl9hY2w9MQphY2NlcHRfbWFjX2ZpbGU9L2V0Yy9ob3N0YXBk
L2hvc3RhcGQuYWxsb3cKY3RybF9pbnRlcmZhY2U9L3J1bi9ob3N0YXBkCmN0cmxfaW50ZXJmYWNl
X2dyb3VwPTAKY291bnRyeV9jb2RlPUNaCmllZWU4MDIxMWQ9MQppZWVlODAyMTFoPTEKd21tX2Vu
YWJsZWQ9MQpodF9jYXBhYj1bR0ZdW0hUNDArXVtTSE9SVC1HSS0yMF1bU0hPUlQtR0ktNDBdW1JY
LVNUQkMxXVtEU1NTX0NDSy00MF0KClRoZSBob3N0YXBkIGRhZW1vbiBzdGFydHMsIGFuZCB0aGUg
QVAgYnJvYWRjYXN0cyB0aGUgYmVhY29uczoKCnrDocWZIDE5IDE3OjUwOjA0IHNydiBob3N0YXBk
WzEzMjUxXTogQ29uZmlndXJhdGlvbiBmaWxlOiAKL2V0Yy9ob3N0YXBkL2FwXzVnaHouY29uZgp6
w6HFmSAxOSAxNzo1MDowNSBzcnYgaG9zdGFwZFsxMzI1MV06IHdscDFzMDogaW50ZXJmYWNlIHN0
YXRlIApVTklOSVRJQUxJWkVELT5DT1VOVFJZX1VQREFURQp6w6HFmSAxOSAxNzo1MDowNSBzcnYg
aG9zdGFwZFsxMzI1MV06IFVzaW5nIGludGVyZmFjZSB3bHAxczAgd2l0aCBod2FkZHIgCnh4Onh4
Onh4Onh4Onh4Onh4IGFuZCBzc2lkICJzb21lYXAiCnrDocWZIDE5IDE3OjUwOjA1IHNydiBob3N0
YXBkWzEzMjUxXTogd2xwMXMwOiBpbnRlcmZhY2Ugc3RhdGUgCkNPVU5UUllfVVBEQVRFLT5FTkFC
TEVECnrDocWZIDE5IDE3OjUwOjA1IHNydiBob3N0YXBkWzEzMjUxXTogd2xwMXMwOiBBUC1FTkFC
TEVECnrDocWZIDE5IDE3OjUwOjE3IHNydiBob3N0YXBkWzEzMjUxXTogd2xwMXMwOiBTVEEgeHg6
eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5IDE3OjUw
OjE3IHNydiBob3N0YXBkWzEzMjUxXTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggSUVF
RSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5IDE3OjUwOjE3IHNydiBob3N0YXBkWzEz
MjUxXTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhc3NvY2lh
dGVkIChhaWQgMSkKesOhxZkgMTkgMTc6NTA6MTcgc3J2IGhvc3RhcGRbMTMyNTFdOiB3bHAxczA6
IFNUQSB4eDp4eDp4eDp4eDp4eDp4eCBJRUVFIAo4MDIuMTE6IGFzc29jaWF0ZWQgKGFpZCAxKQp6
w6HFmSAxOSAxNzo1MDoxNyBzcnYgaG9zdGFwZFsxMzI1MV06IHdscDFzMDogQVAtU1RBLUNPTk5F
Q1RFRCAKeHg6eHg6eHg6eHg6eHg6eHgKesOhxZkgMTkgMTc6NTA6MTcgc3J2IGhvc3RhcGRbMTMy
NTFdOiB3bHAxczA6IFNUQSB4eDp4eDp4eDp4eDp4eDp4eCAKUkFESVVTOiBzdGFydGluZyBhY2Nv
dW50aW5nIHNlc3Npb24gMDdFMzExMTk1Mzc4QjU3MAp6w6HFmSAxOSAxNzo1MDoxNyBzcnYgaG9z
dGFwZFsxMzI1MV06IHdscDFzMDogU1RBIHh4Onh4Onh4Onh4Onh4Onh4IFdQQTogCnBhaXJ3aXNl
IGtleSBoYW5kc2hha2UgY29tcGxldGVkIChSU04pCnrDocWZIDE5IDE3OjUwOjE3IHNydiBob3N0
YXBkWzEzMjUxXTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggClJBRElVUzogc3RhcnRp
bmcgYWNjb3VudGluZyBzZXNzaW9uIDA3RTMxMTE5NTM3OEI1NzAKesOhxZkgMTkgMTc6NTA6MTcg
c3J2IGhvc3RhcGRbMTMyNTFdOiB3bHAxczA6IFNUQSB4eDp4eDp4eDp4eDp4eDp4eCBXUEE6IApw
YWlyd2lzZSBrZXkgaGFuZHNoYWtlIGNvbXBsZXRlZCAoUlNOKQoKVGhlIGNsaWVudCBpcyBhYmxl
IHRvIHNlZSBpdCBhbmQgY29ubmVjdCB0byBpdCwgYnV0IGFmdGVyIGEgY291cGxlIG9mIApzZWNv
bmRzIHRoZSBmb2xsb3dpbmcgaGFwcGVucyBvbiB0aGUgQVA6CgpbICArOSw5Nzk2NjRdIG10NzZ4
MmUgMDAwMDowMTowMC4wOiBGaXJtd2FyZSBWZXJzaW9uOiAwLjAuMDAKWyAgKzAsMDAwMDE0XSBt
dDc2eDJlIDAwMDA6MDE6MDAuMDogQnVpbGQ6IDEKWyAgKzAsMDAwMDEwXSBtdDc2eDJlIDAwMDA6
MDE6MDAuMDogQnVpbGQgVGltZTogMjAxNTA3MzExNjE0X19fXwpbICArMCwwMTgwMTddIG10NzZ4
MmUgMDAwMDowMTowMC4wOiBGaXJtd2FyZSBydW5uaW5nIQpbICArMCwwMDExMDFdIGllZWU4MDIx
MSBwaHk0OiBIYXJkd2FyZSByZXN0YXJ0IHdhcyByZXF1ZXN0ZWQKCmFuZCB0aGUgQVAgZGllcy4g
VGhlIGNsaWVudCBjYW5ub3QgcmVjb25uZWN0IHRvIGl0LCBhbHRob3VnaCBob3N0YXBkIApsb2dz
IHNob3cgdGhhdCBpdCB0cmllczoKCnrDocWZIDE5IDE3OjUxOjE1IHNydiBob3N0YXBkWzEzNTA0
XTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRoZW50aWNh
dGVkCnrDocWZIDE5IDE3OjUxOjE1IHNydiBob3N0YXBkWzEzNTA0XTogd2xwMXMwOiBTVEEgeHg6
eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5IDE3OjUx
OjE5IHNydiBob3N0YXBkWzEzNTA0XTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggSUVF
RSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5IDE3OjUxOjE5IHNydiBob3N0YXBkWzEz
NTA0XTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRoZW50
aWNhdGVkCnrDocWZIDE5IDE3OjUyOjU0IHNydiBob3N0YXBkWzEzNTA0XTogd2xwMXMwOiBTVEEg
eHg6eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5IDE3
OjUyOjU0IHNydiBob3N0YXBkWzEzNTA0XTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHgg
SUVFRSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5IDE3OjUyOjU5IHNydiBob3N0YXBk
WzEzNTA0XTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRo
ZW50aWNhdGVkCnrDocWZIDE5IDE3OjUyOjU5IHNydiBob3N0YXBkWzEzNTA0XTogd2xwMXMwOiBT
VEEgeHg6eHg6eHg6eHg6eHg6eHggSUVFRSAKODAyLjExOiBhdXRoZW50aWNhdGVkCnrDocWZIDE5
IDE3OjU2OjE0IHNydiBob3N0YXBkWzEzNTA0XTogd2xwMXMwOiBTVEEgeHg6eHg6eHg6eHg6eHg6
eHggSUVFRSAKODAyLjExOiBkZWF1dGhlbnRpY2F0ZWQgZHVlIHRvIGluYWN0aXZpdHkgKHRpbWVy
IERFQVVUSC9SRU1PVkUpCgpBUCBzdGF5cyBjb21wbGV0ZWx5IHVudXNhYmxlIHVudGlsIEkgcmVt
b3ZlIGFuZCBtb2Rwcm9iZSBtdDc2eDJlIG1vZHVsZSAKYWdhaW4uIEFuZCB0aGVuIGV2ZXJ5dGhp
bmcgYmVnaW5zIGZyb20gc2NyYXRjaCwgYW5kIHRoZSBBUCBkaWVzIHdpdGhpbiAKc2Vjb25kcy4K
Ckkgb2JzZXJ2ZSB0aGlzIG9uIGEgZnJlc2ggdjUuMyBrZXJuZWwuIEkgaGF2ZW4ndCB0cmllZCBh
bnl0aGluZyBvbGRlci4KClRoZSBvbmx5IHNvbWV3aGF0IHJlbGV2YW50IHRocmVhZCBJIHdhcyBh
YmxlIHRvIGZvdW5kIGlzIFsxXSwgYnV0IGl0J3MgCm5vdCBjbGVhciB3aGF0J3MgdGhlIHJlc29s
dXRpb24gaWYgYW55LgoKQ291bGQgeW91IHBsZWFzZSBzdWdnZXN0IGhvdyB0byBkZWFsIHdpdGgg
dGhpcyBpc3N1ZT8KClRoYW5rcy4KClsxXSBodHRwczovL2ZvcnVtLm9wZW53cnQub3JnL3Qvd2lm
aS1pc3N1ZXMtd2l0aC0xOC0wNi00LW9uLW10NzYvNDA1MzcKCi0tIAogICBPbGVrc2FuZHIgTmF0
YWxlbmtvIChwb3N0LWZhY3R1bSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
