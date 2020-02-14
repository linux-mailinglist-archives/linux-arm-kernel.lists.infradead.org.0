Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F9515D9A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QUWqgAAI7BJ+Y04wgfnUPSN6Mu6XLS1gjmSDzqRTTtQ=; b=loLmT5NhbVms/n
	/BXDjT5UPs9ou3V/FM3MfTJ9NSSQilnXO3vBjS/fjTO7+jCSbh/b9rxQguX5HmfgouOE+pqM7daX6
	WyvDc3eQpMqD5Acx2i9jBFpVMQavF5phN3wPxGpJPqBnRdp296Rqsn+UQM8QZx/s4dmmZ79CU8ZmT
	H3NqPqrDZO7aS9IRrS7tiaAPwObMltleBPHLZy1/z6P1DcfVIX9L3VrLigFhFS1tEkCHVRKVovDan
	vT8G6in60jiVe1NFVdflZBA2l7Ifzp/6gs19yV/jORKE+U0h+5RiE80Dh+2fpMLln3t5ABWcKqc+m
	7mFR/GGN52xm07HzWGuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2c85-0004HI-Jg; Fri, 14 Feb 2020 14:39:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2c7y-000461-Gx
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:39:36 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01EEN3kd008131; Fri, 14 Feb 2020 15:39:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=aDXu3yN7wr2LYWbqsFnQ7kfmjmG1GfHeaXXAAgzdB/s=;
 b=m+TtR1EPUO2VTCe2KJA9E2hgCX+ohmBPFzkqCVHqBGzAkWm0Xdmllzufh0k5Gav3/+oC
 UPQWB+lNEQdyZi0Z3YpCiQP9fY3PWSZVPYWU0FxauNiQvEAFCyzJWsomupTwrSOgkDHI
 UovafsLuSYfXijxBwNwYceJAD0XFR7iS0fMYncHS+z4DgVJAxyDLklIxmy8bvlJeAb8k
 HcDKeuRkIZtpu1ZTAkhMWKz2uomadeczJMk57TMRCD71bC642r7+pTih6EU/Uv/G4y5O
 bfgKa9S7ZGciVGIsZ1LMsmo+ymYFmAr3zzTPu2eXo3bNjWvkd6aEoWDMd4IvjxC/B77w GQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urhvbxg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 14 Feb 2020 15:39:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C23C4100034;
 Fri, 14 Feb 2020 15:39:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 78FF22BA240;
 Fri, 14 Feb 2020 15:39:18 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 14 Feb
 2020 15:39:17 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 14 Feb 2020 15:39:17 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Arnd Bergmann <arnd@arndb.de>, "khilman@baylibre.com"
 <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>
Subject: [GIT PULL] STi DT update for v5.7 round 1
Thread-Topic: [GIT PULL] STi DT update for v5.7 round 1
Thread-Index: AQHV40SJODT1xCAc+UmpZPMn74Ke8Q==
Date: Fri, 14 Feb 2020 14:39:17 +0000
Message-ID: <afe20a6d-061b-a93c-2e60-206b0e8d0f81@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <CFD0148258AFA0449E8137DFA884B745@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-14_04:2020-02-12,
 2020-02-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_063934_929327_5BA4882D 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "soc@kernel.org" <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwgT2xvZiwgS2V2aW4NCg0KUGxlYXNlIGZpbmQgU1RpIGR0IHVwZGF0ZSBmb3IgdjUu
NyByb3VuZCAxOg0KDQpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGJiNmQzZmIz
NTRjNWVlOGQ2YmRlMmQ1NzZlYjcyMjBlYTA5ODYyYjk6DQoNCsKgIExpbnV4IDUuNi1yYzEgKDIw
MjAtMDItMDkgMTY6MDg6NDggLTA4MDApDQoNCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBv
c2l0b3J5IGF0Og0KDQrCoCBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvcGNob3RhcmQvc3RpLmdpdCB0YWdzL3N0aS1kdC1mb3ItNS43LXJvdW5kMQ0KDQpmb3Ig
eW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZjI0NjY3Nzc5YjUzNDgyNzllNWU0MzI4MzEyYTE0
MWE3MzBhMWZjNzoNCg0KwqAgQVJNOiBkdHM6IHN0aTogZml4dXAgc291bmQgZnJhbWUtaW52ZXJz
aW9uIGZvciBzdGloeHh4LWIyMTIwLmR0c2kgKDIwMjAtMDItMTEgMTc6MjQ6NTQgKzAxMDApDQoN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NClNUaSBkdCBmaXhlczoNCi0tLS0tLS0tLS0tLS0NCsKgIC0gcmVtb3ZlIGRlcHJl
Y2F0ZWQgU3lub3BzeXMgUEhZIGR0IHByb3BlcnRpZXMNCsKgIC0gZml4IHNvdW5kIGZyYW1lLWlu
dmVyc2lvbiBwcm9wZXJ0eQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpLdW5pbm9yaSBNb3JpbW90byAoMSk6DQrCoMKg
wqDCoMKgIEFSTTogZHRzOiBzdGk6IGZpeHVwIHNvdW5kIGZyYW1lLWludmVyc2lvbiBmb3Igc3Rp
aHh4eC1iMjEyMC5kdHNpDQoNClBhdHJpY2UgQ2hvdGFyZCAoMSk6DQrCoMKgwqDCoMKgIEFSTTog
ZHRzOiBzdGk6IFJlbW92ZSBkZXByZWNhdGVkIHNucHMgUEhZIHByb3BlcnRpZXMgZm9yIHN0aWg0
MTAtYjIyNjANCg0KwqBhcmNoL2FybS9ib290L2R0cy9zdGloNDEwLWIyMjYwLmR0c8KgIHwgMyAt
LS0NCsKgYXJjaC9hcm0vYm9vdC9kdHMvc3RpaHh4eC1iMjEyMC5kdHNpIHwgMiArLQ0KwqAyIGZp
bGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQ0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
