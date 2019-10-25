Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F01E4B87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rttHe88epL3mU7K/NJYrSxFmVi/IXAzKNhslQrVBA0Y=; b=OWBLMbpmaqqbytn4apC9xxWZ9J
	6T0nTK69Hf3DIp+c4zFcUoiFBFMMEHZbycQL7X/oShEfxFHwe7Zz+zoggE9+T7IYtRn6ivbjoICF4
	oxaBuX3Not5y5FxZO7BAYVOynlkVbIal5nPXf7H68dZNJB1hDX9tuXe57xHWNiUxTR9EdS7lU6UCa
	s/LLmC8YqanF0j6xGvUyr7EHLw2bGb3CULoeU3nlY67LwiK56wi9kBDByZnvSLd0Ep38Bgf2TOJtb
	Y7fuEFY9Jk39OA4m/iUJqoNjty9cjOtijP64JOFzG0u1zeyJoeHQaCsmaHu0MqhARtm3F6BzaX3ZX
	41zXXdbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNz3h-0006xC-N1; Fri, 25 Oct 2019 12:51:13 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNz3X-0006wf-4t
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:51:04 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9PCkj7f003283; Fri, 25 Oct 2019 14:50:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=LIENWB/eH01Oj0fOAV4klJmkPuYVSKgfkvCo0B9V8hc=;
 b=XiZV9qowpUtgatBrL4JgA7ZgjqvRz7mkW5vw/Invo136ee+53kOVL5zhUHkpaAS4fI1g
 SmkVUNN13x1AFCOVEuHsa+r6uqbzdb9y5s6Wa/VS+afzRXLnefJ0UNVSURP/IxznCEsz
 v4J9M9R1JiFBaM5ZdMrpJyHX9QdBVAL+G+V30Zc0sY/QjSprrSejP5jMZoJ1+1ExJd88
 B/qQ+vAkdOUDzFxzffyVqnOpHS7ocdcmOQxeE7rZNwvLaKuivnVvciiBUJow09QVQU3D
 sce3e8QRVauUe2qmCxb9IIXhazeYxQpiob6hEX0+riOKuexNyhR4PZGptpikHuqDqbl3 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s57rrb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 14:50:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 490FE100034;
 Fri, 25 Oct 2019 14:50:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 33D7F2BE22E;
 Fri, 25 Oct 2019 14:50:54 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 14:50:53 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, <soc@kernel.org>, arm-soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: [GIT PULL] STM32 DT changes for v5.5 #1
Message-ID: <02c39510-f36d-abbb-c76f-49aff07c0a08@st.com>
Date: Fri, 25 Oct 2019 14:50:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_07:2019-10-25,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_055103_644115_35DE9E55 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
ZCBvZiBTVE0zMiBEVCB1cGRhdGVzIGZvciB2NS41LgpNYWluIGNoYW5nZXMgY29uY2VybiBzdG0z
Mm1wMTU3IE1QVSBzb2MgaW5jbHVkaW5nIEFEQy9EQUMsIEhETUksIGFuZCAKZm9jYWx0ZWNoIHN1
cHBvcnQuCgpSZWdhcmRzCkFsZXgKCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0
IDU0ZWNiOGY3MDI4YzVlYjNkNzQwYmI4MmIwZjFkOTBmMmRmNjNjNWM6CgogICBMaW51eCA1LjQt
cmMxICgyMDE5LTA5LTMwIDEwOjM1OjQwIC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0
IHJlcG9zaXRvcnkgYXQ6CgogICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvYXRvcmd1ZS9zdG0zMi5naXQgCnRhZ3Mvc3RtMzItZHQtZm9yLXY1LjUtMQoKZm9y
IHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGMzNGNiZTI0Y2ZkNTEyZWZmM2JiZmMwOWQxMzM0
ZjM0OGFjZTUwNjc6CgogICBBUk06IGR0czogc3RtMzI6IHJlbW92ZSB1c2VsZXNzIGRtYS1yYW5n
ZXMgcHJvcGVydHkgZm9yIHN0bTMyZjQ2OSAKKDIwMTktMTAtMjUgMTQ6Mjg6NDIgKzAyMDApCgot
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tClNUTTMyIERUIHVwZGF0ZXMgZm9yIHY1LjUsIHJvdW5kIDEKCkhpZ2hsaWdodHM6Ci0t
LS0tLS0tLS0KCk1QVSBwYXJ0OgogIC1BZGQgYW5kIGVuYWJsZSBBREMgc3VwcG9ydCBvbiBzdG0z
Mm1wMTU3YS1kazEKICAtQWRkIERBQyBzdXBwb3J0IG9uIHN0bTMybXAxNTdjLWVkMQogIC1BZGQg
YW5kIGVuYWJsZSBWUkVGQlVGIHN1cHBvcnQgb24gc3RtMzJtcDE1N2EtZGsxCiAgLUFkZCBmb2Nh
bHRlY2ggdG91Y2hzY3JlZW4gb24gc3RtMzJtcDE1N2MtZGsyCiAgLUFkZCBoZG1pIHN1cHBvcnQg
b24gc3RtMzJtcDE1N2EtZGsxCiAgLUZpeCBpc3N1ZXMgc2VlbiBkdXJpbmcgWUFNTCBEVCB2YWxp
ZGF0aW9uCiAgLUZpeCByZWd1bGF0b3JzIGlzc3VlcyBmb3IgYWxsIE1QVSBib2FyZHMKCk1DVSBw
YXJ0OgogIC1GaXggaXNzdWVzIHNlZW4gZHVyaW5nIFlBTUwgRFQgdmFsaWRhdGlvbgoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpBbGV4YW5kcmUgVG9yZ3VlICg0KToKICAgICAgIEFSTTogZHRzOiBzdG0zMjogZml4IG1lbW9y
eSBub2RlcyB0byBtYXRjaCB3aXRoIERUIHZhbGlkYXRpb24gdG9vbAogICAgICAgQVJNOiBkdHM6
IHN0bTMyOiBmaXggam95c3RpY2sgbm9kZSBvbiBzdG0zMmY3NDYgYW5kIHN0bTMybXAxNTdjIApl
dmFsIGJvYXJkcwogICAgICAgQVJNOiBkdHM6IHN0bTMyOiByZW1vdmUgdXNiIHBoeS1uYW1lcyBl
bnRyaWVzIG9uIHN0bTMybXAxNTdjLWV2MQogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBmaXggcmVn
dWxhdG9yLXNkX3N3aXRjaCBub2RlIG9uIHN0bTMybXAxNTdjLWVkMSAKYm9hcmQKCkJlbmphbWlu
IEdhaWduYXJkICgzKToKICAgICAgIEFSTTogZHRzOiBzdG0zMjogcmVtb3ZlIHVzZWxlc3MgaW50
ZXJydXB0IGZyb20gZHNpIG5vZGUgZm9yIHN0bTMyZjQ2OQogICAgICAgQVJNOiBkdHM6IHN0bTMy
OiByZW1vdmUgdXNlbGVzcyBkbWEtcmFuZ2VzIHByb3BlcnR5IGZvciBzdG0zMmY0MjkKICAgICAg
IEFSTTogZHRzOiBzdG0zMjogcmVtb3ZlIHVzZWxlc3MgZG1hLXJhbmdlcyBwcm9wZXJ0eSBmb3Ig
c3RtMzJmNDY5CgpGYWJyaWNlIEdhc25pZXIgKDUpOgogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBF
bmFibGUgVlJFRkJVRiBvbiBzdG0zMm1wMTU3YS1kazEKICAgICAgIEFSTTogZHRzOiBzdG0zMjog
YWRkIEFEQyBwaW5zIHVzZWQgb24gc3RtMzJtcDE1N2EtZGsxCiAgICAgICBBUk06IGR0czogc3Rt
MzI6IGVuYWJsZSBBREMgc3VwcG9ydCBvbiBzdG0zMm1wMTU3YS1kazEKICAgICAgIEFSTTogZHRz
OiBzdG0zMjogQWRkIERBQyBwaW5zIHVzZWQgb24gc3RtMzJtcDE1N2MtZWQxCiAgICAgICBBUk06
IGR0czogc3RtMzI6IEFkZCBEQUMgc3VwcG9ydCB0byBzdG0zMm1wMTU3Yy1lZDEKCk9saXZpZXIg
TW95c2FuICgxKToKICAgICAgIEFSTTogZHRzOiBzdG0zMjogYWRkIGhkbWkgYXVkaW8gc3VwcG9y
dCB0byBzdG0zMm1wMTU3YS1kazEgYm9hcmQKClBhc2NhbCBQYWlsbGV0ICg0KToKICAgICAgIEFS
TTogZHRzOiBzdG0zMjogYWRkIFBXUiByZWd1bGF0b3JzIHN1cHBvcnQgb24gc3RtMzJtcDE1Nwog
ICAgICAgQVJNOiBkdHM6IHN0bTMyOiBjaGFuZ2UgZGVmYXVsdCBtaW5pbWFsIGJ1Y2sxIHZhbHVl
IG9uIHN0bTMybXAxNTcKICAgICAgIEFSTTogZHRzOiBzdG0zMjogRml4IGFjdGl2ZSBkaXNjaGFy
Z2UgdXNhZ2Ugb24gc3RtMzJtcDE1NwogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBkaXNhYmxlIGFj
dGl2ZS1kaXNjaGFyZ2UgZm9yIHZidXNfb3RnIG9uIApzdG0zMm1wMTU3YS1hdmVuZ2VyOTYKCllh
bm5pY2sgRmVydHLDqSAoMik6CiAgICAgICBBUk06IGR0czogc3RtMzI6IG1vdmUgbHRkYyBwaW5j
dHJsIG9uIHN0bTMybXAxNTdhIGRrMSBib2FyZAogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQg
Zm9jYWx0ZWNoIHRvdWNoc2NyZWVuIG9uIHN0bTMybXAxNTdjLWRrMiBib2FyZAoKICBhcmNoL2Fy
bS9ib290L2R0cy9zdG0zMjQyOWktZXZhbC5kdHMgICAgICAgIHwgIDMgKy0KICBhcmNoL2FybS9i
b290L2R0cy9zdG0zMjc0NmctZXZhbC5kdHMgICAgICAgIHwgIDMgKy0KICBhcmNoL2FybS9ib290
L2R0cy9zdG0zMmY0MjktZGlzY28uZHRzICAgICAgIHwgIDIgKy0KICBhcmNoL2FybS9ib290L2R0
cy9zdG0zMmY0NjktZGlzY28uZHRzICAgICAgIHwgIDMgKy0KICBhcmNoL2FybS9ib290L2R0cy9z
dG0zMmY0NjkuZHRzaSAgICAgICAgICAgIHwgIDEgLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMy
Zjc0Ni1kaXNjby5kdHMgICAgICAgfCAgMiArLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyZjc2
OS1kaXNjby5kdHMgICAgICAgfCAgMiArLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyaDc0M2kt
ZGlzY28uZHRzICAgICAgfCAgMiArLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMyaDc0M2ktZXZh
bC5kdHMgICAgICAgfCAgMiArLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTctcGluY3Ry
bC5kdHNpICAgfCAyOCArKysrKysrKysrKwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdh
LWF2ZW5nZXI5Ni5kdHMgfCAgOCArKy0KICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1k
azEuZHRzICAgICAgIHwgNzcgCisrKysrKysrKysrKysrKysrKysrKysrKysrLS0tCiAgYXJjaC9h
cm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cyAgICAgICB8IDIxICsrKysrLS0tCiAgYXJj
aC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZWQxLmR0cyAgICAgICB8IDQxICsrKysrKysrLS0t
LS0tLQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWV2MS5kdHMgICAgICAgfCAgMyAt
LQogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLmR0c2kgICAgICAgICAgfCAyMyArKysr
KysrKysKICAxNiBmaWxlcyBjaGFuZ2VkLCAxNzEgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25z
KC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
