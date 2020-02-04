Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C2E151A9B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 13:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5iEwHJdEy6zsIE6keeY1DR3CgOlGIksei92DNjlLCF8=; b=ogBAixjcsLQcUL
	aqTCKBenZ7T3angjyZdeQeZ5LS5z5OKLM9/YcqVfTWCssXeo37Zec3SBqKW5wjkt+w3GTZLG/YHJf
	Makt8y4N4VO0jXrBOhDWHmMbKKikL52+fgwBVXZ2uyTLjsYklC8r63Ms+JmLY0j+QwzofRwL5ypWe
	ue6NUuBY1Rlqd1NkDWdaQJjc4m5BcAzwVg+aiaD4CGZ/+dO73CE51hYRemWXLFBJJlgrznpYjWqmr
	qODCJLDOD1B8Q3mUOrqUxIuDMapUXyhjx1vgh/h9KJXBxBxLxX+0dMbwdZdwcK9eI3BCurHRA9sHn
	VOwzHsbDMSYjRX7gMCSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyxSS-00070O-23; Tue, 04 Feb 2020 12:37:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxSL-0006ym-FA
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 12:37:31 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 014CS5JR011049; Tue, 4 Feb 2020 13:37:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=j6Gu6X4AdfXr88JUQjVDd6lirRJ23U4rW0VUUwrSU7w=;
 b=Z4N0jj36W8Vt1DmKvyH5ye5ahyNX0/aVmDkOJloX3vMrWE9fIBUGnrfK+GKKCizxQIFq
 EbLU+3xii1fDgNi0QeJbaSKLQA41m7q4N0LAa5B2QsyetTPkguKdMpKV/GjEQJnMgQa1
 o+xQlcV7mR7Tl5kFwNjGNDoogJ1g75y01WFpiRxvupf98Y+/L7Sh1pTMINaAW+lcP9tX
 zJUVLDdG9SEzpMRg7j5TWgYjlu6IWpQ/WeIsTwOMmvj7g/4AEohXFV/iy+Kf0SMwZFZE
 nVAJq4TgE7fC3Fy+dqs5AYlGYNFG2HBKrQtF7oN2t6zZ8b9UlzwVpk91GA0B3urga2FE OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvybe1fms-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 04 Feb 2020 13:37:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 865D410002A;
 Tue,  4 Feb 2020 13:37:15 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5A2182BE237;
 Tue,  4 Feb 2020 13:37:15 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Feb
 2020 13:37:15 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Tue, 4 Feb 2020 13:37:15 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, "khilman@baylibre.com"
 <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>
Subject: [GIT PULL] STi DT update for v5.6 round 1
Thread-Topic: [GIT PULL] STi DT update for v5.6 round 1
Thread-Index: AQHV21fUlvmf1pIO+EOSI+9it4Ghsg==
Date: Tue, 4 Feb 2020 12:37:14 +0000
Message-ID: <c6f76adc-b32f-a64f-c7b1-417a26de1667@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <46CB922553A16C469783DA69C0F2ED22@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-04_03:2020-02-04,
 2020-02-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_043730_003563_D483CA12 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "arm@kernel.org" <arm@kernel.org>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Patrice CHOTARD <patrice.chotard@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwgT2xvZiwgS2V2aW4NCg0KUGxlYXNlIGZpbmQgU1RpIGR0IHVwZGF0ZSBmb3IgdjUu
NiByb3VuZCAxOg0KDQpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGQ1MjI2ZmE2
ZGJhZTA1NjllZTQzZWNmYzA4YmRjZDY3NzBmYzQ3NTU6DQoNCg0KwqAgTGludXggNS41ICgyMDIw
LTAxLTI2IDE2OjIzOjAzIC0wODAwKQ0KDQphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3Np
dG9yeSBhdDoNCg0KwqAgZ2l0QGdpdG9saXRlLmtlcm5lbC5vcmc6cHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3BjaG90YXJkL3N0aS5naXQgdGFncy9zdGktZHQtZm9yLTUuNi1yb3VuZDENCg0KZm9y
IHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDIxZWViYWU5YTExZmYxOGZlNmQ2YjQzYWRjY2Fk
ZDUzM2FiZGYwZDY6DQoNCsKgIEFSTTogc3RpaHh4eC1iMjEyMC5kdHNpOiBmaXh1cCBzb3VuZCBm
cmFtZS1pbnZlcnNpb24gKDIwMjAtMDItMDQgMTE6MjE6MzcgKzAxMDApDQoNCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NClNU
aSBkdCBmaXhlczoNCi0tLS0tLS0tLS0tLS0NCsKgIC0gcmVtb3ZlIGRlcHJlY2F0ZWQgU3lub3Bz
eXMgUEhZIGR0IHByb3BlcnRpZXMNCsKgIC0gZml4IHNvdW5kIGZyYW1lLWludmVyc2lvbiBwcm9w
ZXJ0eQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQpLdW5pbm9yaSBNb3JpbW90byAoMSk6DQrCoMKgwqDCoMKgIEFSTTog
c3RpaHh4eC1iMjEyMC5kdHNpOiBmaXh1cCBzb3VuZCBmcmFtZS1pbnZlcnNpb24NCg0KUGF0cmlj
ZSBDaG90YXJkICgxKToNCsKgwqDCoMKgwqAgQVJNOiBkdHM6IHN0aWg0MTAtYjIyNjA6IFJlbW92
ZSBkZXByZWNhdGVkIHNucHMgUEhZIHByb3BlcnRpZXMNCg0KwqBhcmNoL2FybS9ib290L2R0cy9z
dGloNDEwLWIyMjYwLmR0c8KgIHwgMyAtLS0NCsKgYXJjaC9hcm0vYm9vdC9kdHMvc3RpaHh4eC1i
MjEyMC5kdHNpIHwgMiArLQ0KwqAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRl
bGV0aW9ucygtKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
