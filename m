Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA577FCDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EIntDPBjwYwQQ0eK1z5pPTivFtyM1Wc6OY/NVwEGrIg=; b=atfCeDjkIbpIN4WwNuNWhneGFf
	H58BGjWquDHVtuBPK8X06V4Z3rUIAcun/ZInOrG0cOSqUjnuOT6Rpr/KDcvYeOXbAh6/Nb0Ne8WQa
	ma3M/2EKN37qpb+qUZ2UYWil0AgvzlWNLZbMAxkDM7iGrXVmrvEg/JtP1js0ahXd19HxCGqwvjU7v
	lI7VCAb89IkuV+9uy5ry4WOs2/Hz4LFoUxNb4jpnqCuB1+Ppnu0jKjakfD1i9m2WPErx7rK9Imdf5
	/nXjN1MC3efjaWLBNqhtfK7CvDvE0EIk/Cbpd78rlLwi01b8lE4Djyzw2Di5qRukwN5TITOA3gvve
	qCc514lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYxF-00067e-N4; Fri, 02 Aug 2019 14:54:49 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYx8-00066x-2n
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:54:43 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x72EpgxH018199; Fri, 2 Aug 2019 16:54:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : cc : from : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=CYWixp/rBJonqmQOgufEgzR27lbQTDH5ri4nqF8ME0k=;
 b=b0kyqJ4+ya/eZMHNvO3XEEUAy3aHneQt/n4tOMzs0HSu8x4IfmjI4mPM/WK+x1sEzOxa
 8xdz0mjj3JBLiyIXfPXOIAVx2rrfM7Bf90FosE7IfUd/w2AX7dnNKiZflx3ZJQyXhUUw
 bNJs4DNBH/bvy5oq852m68P4xJCCCLw8JKoCqAtwrTDdZVzVkIjwgQQKWW4Nhpb6QAYo
 AXbQXPRvcpjE5fX/DH3AsepBBuFE9lB7bi6tt3YmuGYsDBk5n1ySs9AYlWANOUNhEhk4
 Uyr+t9NJvonOca9RkpCvmy12X7+u8zl43Cu3smK5LuV1vYwWHGBYulEnAmArxC0SqkGh 1Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u3vd07wnu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 16:54:35 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 343C638;
 Fri,  2 Aug 2019 14:54:35 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 25B132C54FF;
 Fri,  2 Aug 2019 16:54:35 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 2 Aug
 2019 16:54:34 +0200
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, <soc@kernel.org>, arm-soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 DT changes for v5.4 #1
Message-ID: <482a2a40-a246-6654-7e3b-8e38b137752f@st.com>
Date: Fri, 2 Aug 2019 16:54:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_06:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_075442_428998_E6D10E49 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwgT2xvZiBhbmQgS2V2aW4sCgpQbGVhc2UgY29uc2lkZXIgdGhpcyBmaXJzdCByb3Vu
ZCBvZiBTVE0zMiBEVCB1cGRhdGVzIGZvciB2NS40LgpNYWluIGNoYW5nZXMgY29uY2VybiBzdG0z
Mm1wMTU3IE1QVSBzb2MgaW5jbHVkaW5nIE00IGNvLXByb2Nlc3NvciAKc3VwcG9ydCBhbmQgRk1D
MiBOQU5EIGNvbnRyb2xsZXIgc3VwcG9ydC4KClJlZ2FyZHMKQWxleAoKVGhlIGZvbGxvd2luZyBj
aGFuZ2VzIHNpbmNlIGNvbW1pdCA1ZjllODMyYzEzNzA3NTA0NWQxNWNkNjg5OWFiMDUwNWNmYjJj
YTRiOgoKICAgTGludXMgNS4zLXJjMSAoMjAxOS0wNy0yMSAxNDowNTozOCAtMDcwMCkKCmFyZSBh
dmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICAgZ2l0Oi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2F0b3JndWUvc3RtMzIuZ2l0IAp0YWdzL3N0bTMy
LWR0LWZvci12NS40LTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0OTQ5MGQ1MTc0
M2NlZGFkMzY4ZjNkNzZmNzY0MDZiYzRiNzVmZDUxOgoKICAgQVJNOiBkdHM6IHN0bTMyOiByZW1v
dmUgdXNlbGVzcyBwaW5jdHJsIGVudHJpZXMgaW4gc3RtMzJtcDE1Ny1waW5jdHJsIAooMjAxOS0w
OC0wMiAxNjoxNzo0MyArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU1RNMzIgRFQgdXBkYXRlcyBmb3IgdjUuNCwg
cm91bmQgMQoKSGlnaGxpZ2h0czoKLS0tLS0tLS0tLQoKTVBVIHBhcnQ6CiAgLUFkZCBGTUMyIE5B
TkQgY29udHJvbGxlciBzdXBwb3J0IG9uIHN0bTMybXAxNTdjLWV2MS4KICAtQWRkIE00IHJlbW90
ZXByb2Mgc3VwcG9ydDoKICAgLUFkZCBzdXBwb3J0IGluIHN0bTMybXAxNTdjLmR0c2kuCiAgIC1E
ZWNsYXJlIGNvcHJvIHJlc2VydmVkIG1lbW9yaWVzIHJlZ2lvbiBvbiBzdG0zMm1wMTU3IEVWMSBh
bmQgREsxCiAgICBib2FyZHMuCiAgIC1FbmFibGUgTTQgY29wcm8gc3VwcG9ydCBvbiBzdG0zMm1w
MTU3IEVWMSBhbmQgREsxLgogIC1BZGQgYm9vc3RlciBmb3IgQURDIG9uIHN0bTMybXAxNTdjLgog
IC1BZGQgYXVkaW8gY29kZWMgc3VwcG9ydCBvbiBzdG0zMm1wMTU3IERLMS4KCk1DVSBwYXJ0Ogog
IC1SZW1vdmUgZml4ZWQgcmVndWxhdG9yIHVuaXQgYWRkcmVzcyBvbiBzdG0zMjQyOWktZXZhbCB1
c2VkIGJ5IEFEQy4KICAtQWRkIG1pc3NpbmcgdmRkLXN1cHBseSByZXF1aXJlZCBieSBBREMgb24g
c3RtMzI0MjlpLWV2YWwgYW5kCiAgIHN0bTMyaDc0M2ktZXZhbC4KICAtQWRkIHB3bSBjZWxscyBv
biBmNzQ2IGFuZCBmNDI5LgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpBbGV4YW5kcmUgVG9yZ3VlICgxKToKICAgICAgIEFS
TTogZHRzOiBzdG0zMjogcmVtb3ZlIHVzZWxlc3MgcGluY3RybCBlbnRyaWVzIGluIHN0bTMybXAx
NTctcGluY3RybAoKQ2hyaXN0b3BoZSBLZXJlbGxvICgzKToKICAgICAgIEFSTTogZHRzOiBzdG0z
MjogYWRkIEZNQzIgTkFORCBjb250cm9sbGVyIHN1cHBvcnQgb24gc3RtMzJtcDE1N2MKICAgICAg
IEFSTTogZHRzOiBzdG0zMjogYWRkIEZNQzIgTkFORCBjb250cm9sbGVyIHBpbnMgbXV4aW5nIG9u
IApzdG0zMm1wMTU3Yy1ldjEKICAgICAgIEFSTTogZHRzOiBzdG0zMjogZW5hYmxlIEZNQzIgTkFO
RCBjb250cm9sbGVyIG9uIHN0bTMybXAxNTdjLWV2MQoKRXJ3YW4gTGUgUmF5ICgxKToKICAgICAg
IEFSTTogZHRzOiBzdG0zMjogZml4IC1XYWxsIFc9MSBjb21waWxhdGlvbiBpbiBzdG0zMm1wMTU3
IHBpbmN0cmwgCmZvciBtY2FuCgpGYWJpZW4gRGVzc2VubmUgKDUpOgogICAgICAgQVJNOiBkdHM6
IHN0bTMyOiBhZGQgbTQgcmVtb3RlcHJvYyBzdXBwb3J0IG9uIFNUTTMyTVAxNTdjCiAgICAgICBB
Uk06IGR0czogc3RtMzI6IGRlY2xhcmUgY29wcm8gcmVzZXJ2ZWQgbWVtb3JpZXMgb24gU1RNMzJN
UDE1N2MtZWQxCiAgICAgICBBUk06IGR0czogc3RtMzI6IGVuYWJsZSBtNCBjb3Byb2Nlc3NvciBz
dXBwb3J0IG9uIFNUTTMyTVAxNTdjLWVkMQogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBkZWNsYXJl
IGNvcHJvIHJlc2VydmVkIG1lbW9yaWVzIG9uIFNUTTMyTVAxNTdhLWRrMQogICAgICAgQVJNOiBk
dHM6IHN0bTMyOiBlbmFibGUgbTQgY29wcm9jZXNzb3Igc3VwcG9ydCBvbiBTVE0zMk1QMTU3YS1k
azEKCkZhYnJpY2UgR2FzbmllciAoOCk6CiAgICAgICBBUk06IGR0czogc3RtMzI6IHJlbW92ZSBm
aXhlZCByZWd1bGF0b3IgdW5pdCBhZGRyZXNzIG9uIApzdG0zMjQyOWktZXZhbAogICAgICAgQVJN
OiBkdHM6IHN0bTMyOiBhZGQgbWlzc2luZyB2ZGRhLXN1cHBseSB0byBhZGMgb24gc3RtMzI0Mjlp
LWV2YWwKICAgICAgIEFSTTogZHRzOiBzdG0zMjogYWRkIG1pc3NpbmcgdmRkYS1zdXBwbHkgdG8g
YWRjIG9uIHN0bTMyaDc0M2ktZXZhbAogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQgYm9vc3Rl
ciBmb3IgQURDIGFuYWxvZyBzd2l0Y2hlcyBvbiBzdG0zMm1wMTU3YwogICAgICAgQVJNOiBkdHM6
IHN0bTMyOiBhZGQgcHdtIGNlbGxzIHRvIHN0bTMybXAxNTdjCiAgICAgICBBUk06IGR0czogc3Rt
MzI6IGFkZCBwd20gY2VsbHMgdG8gc3RtMzJmNDI5CiAgICAgICBBUk06IGR0czogc3RtMzI6IGFk
ZCBwd20gY2VsbHMgdG8gc3RtMzJmNzQ2CiAgICAgICBBUk06IGR0czogc3RtMzI6IGFkZCBzeXNj
ZmcgdG8gQURDIG9uIHN0bTMybXAxNTdjCgpMdWRvdmljIEJhcnJlICgxKToKICAgICAgIEFSTTog
ZHRzOiBzdG0zMjogYWN0aXZhdGUgZG1hIGZvciBxc3BpIG9uIHN0bTMybXAxNTcKCk9saXZpZXIg
TW95c2FuICgxKToKICAgICAgIEFSTTogZHRzOiBzdG0zMjogYWRkIGF1ZGlvIGNvZGVjIHN1cHBv
cnQgb24gc3RtMzJtcDE1N2EtZGsxIGJvYXJkCgpZYW5uaWNrIEZlcnRyw6kgKDEpOgogICAgICAg
QVJNOiBkdHM6IHN0bTMyOiBhZGQgcGh5LWRzaS1zdXBwbHkgcHJvcGVydHkgb24gc3RtMzJtcDE1
N2MtZXYxCgogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyNDI5aS1ldmFsLmR0cyAgICAgIHwgIDI1
ICsrKy0tLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyZjQyOS5kdHNpICAgICAgICAgIHwgIDEy
ICsrKwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyZjc0Ni5kdHNpICAgICAgICAgIHwgIDEyICsr
KwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyaDc0M2ktZXZhbC5kdHMgICAgIHwgICAxICsKICBh
cmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3LXBpbmN0cmwuZHRzaSB8ICA3MCArKysrKysrKysr
LS0tLS0tCiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtZGsxLmR0cyAgICAgfCAxMzUg
CisrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
bXAxNTdjLWVkMS5kdHMgICAgIHwgIDQ2ICsrKysrKysrKysKICBhcmNoL2FybS9ib290L2R0cy9z
dG0zMm1wMTU3Yy1ldjEuZHRzICAgICB8ICAxNyArKysrCiAgYXJjaC9hcm0vYm9vdC9kdHMvc3Rt
MzJtcDE1N2MuZHRzaSAgICAgICAgfCAgNjEgKysrKysrKysrKysrKysKICA5IGZpbGVzIGNoYW5n
ZWQsIDM0MiBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
