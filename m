Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D29A4EAE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zbHCmLNTmc9SyW/T2wUFnciBQbJZmsm2WljUSEfIcG8=; b=o09PNqKjWncWufgFB0Y9G4bpxU
	OCSJ7BCdNsS87EDb5JAI0axG7kFAwUiqTcj8HEXP55j/cMLjEJqxJ/tiGeC1yEQ+Wm7BSc5/pDyz0
	EUW9KmEOtrJ4itf+tk7RF9+kc9TcXd5Ss12clIwX4TkflLfk+OcP47YII0M9YWrBsP8nv19z51WyU
	UTBFPCIBgCBJsFgDXIpo4aUcHLTgfjXhutiXaYKRrqqWGtN7PBnqwpwecZvgPLOKbdiXIu6qelA+f
	f7gWfKDonI2bwuQAl3djfY1kOvW5IP6HYm7fR5cZLukgnT+2chbcxFZAt3VIDQy8qqli/96R+Eeyq
	yfTSpCqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKhv-0001s0-K3; Fri, 21 Jun 2019 14:40:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKhg-0001rK-H0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:39:50 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5LEbDHJ025342; Fri, 21 Jun 2019 16:39:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=to : from : subject : cc
 : message-id : date : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=u94jrZIsRAME6Qw5tCZ7FvJW50InLq8VplbD83Rg2FE=;
 b=qP57v68wsPUtFMaSJyyqH16U63MQPRpO1U6wqasyn4/gxpRSVzvAyUAuWQJAf+T6ujAn
 WKoCLKqZqQIZL+FSQhYBDk015Q1AyNe7UxGPWzUKzTQtVReoMDjXLkl9QW7gePWPV7TS
 Ae+KyGmRLQZyndU2hDns0BeLZGKiT7t0htBGjQwffuVZ6RUY54A8UoQAfQtXjePFu6+7
 KWz4XgAyyrahHaGsUhfKVgY22zTnbYKRbPJcl/VUiyDFUecMtYIt/1WKFy3SuCc1zSY9
 fEMzrfkMj1z1zBCE9i8HUtTt1EZsiCV1xzcltHQYlO+XCt/RMAdGzM2co84SLNv5KRvE rw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7wxssmgu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 21 Jun 2019 16:39:40 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0369131;
 Fri, 21 Jun 2019 14:39:39 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D09F72B97;
 Fri, 21 Jun 2019 14:39:39 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 21 Jun
 2019 16:39:39 +0200
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>, arm-soc <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Subject: [GIT PULL] STM32 DT changes for v5.3 #1
Message-ID: <9f17b8fd-a354-618b-f70a-168c75d0da27@st.com>
Date: Fri, 21 Jun 2019 16:39:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-21_10:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_073948_904988_E8D3DC9C 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwgT2xvZiBhbmQgS2V2aW4sCgpQbGVhc2UgY29uc2lkZXIgdGhpcyBmaXJzdCByb3Vu
ZCBvZiBTVE0zMiBEVCB1cGRhdGVzIGZvciB2NS4zLgpBcyB5b3UnbGwgc2VlIGluIGhpZ2hsaWdo
dHMsIG1haW4gY2hhbmdlcyBhcmUgdGhlIGFkZGl0aW9uIG9mIGEgbmV3IApib2FyZCAoc3RtMzJt
cDE1N2EtYXZlbmdlcikgb24gdGhlIFNUTTMyIE1QVSBmYW1pbHkgYW5kIGRldmljZXMgCmVuaGFu
Y2VtZW50IG9mIFNUTTMybXAxNTdjIFNPQy4KClRoYW5rcy4KQWxleAoKVGhlIGZvbGxvd2luZyBj
aGFuZ2VzIHNpbmNlIGNvbW1pdCBhMTg4MzM5Y2E1YTM5NmFjYzU4OGU1ODUxZWQ3ZTE5ZjY2YjBl
YmQ5OgoKICAgTGludXggNS4yLXJjMSAoMjAxOS0wNS0xOSAxNTo0NzowOSAtMDcwMCkKCmFyZSBh
dmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICAgZ2l0Oi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2F0b3JndWUvc3RtMzIuZ2l0IAp0YWdzL3N0bTMy
LWR0LWZvci12NS4zLTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBmNjVhYWY4Yjg5
N2VmY2U0ZGYxYzNlMjQ5OGJjNDg3OTVkYzJiYTU2OgoKICAgQVJNOiBkdHM6IHN0bTMyOiByZXBs
YWNlIHJnbWlpIG1vZGUgd2l0aCByZ21paS1pZCBvbiBzdG0zMm1wMTUgYm9hcmRzIAooMjAxOS0w
Ni0yMSAxNjoxNDozMyArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KU1RNMzIgRFQgdXBkYXRlcyBmb3IgdjUuMywg
cm91bmQgMQoKSGlnaGxpZ2h0czoKLS0tLS0tLS0tLQoKTVBVIHBhcnQ6CiAgLUFkZCBzdG0zMm1w
MTU3YS1hdmVuZ2VyIGJvYXJkIHN1cHBvcnQ6CiAgIFRoaXMgYm9hcmQgZW1iZWRzIGEgU1RNMzJN
UDE1N2EgU09DIHdpdGggQUMgcGFja2FnZSAoVEZCR0EzNjEsIDE0OCBpb3MpCiAgICwgMTAyNE1C
IG9mIEREUjMgYW5kIFNUUE1JQzFBIHBtaWMgLiBTZXZlcmFsIGNvbm5lY3Rpb25zIGFyZSAKYXZh
aWxhYmxlIG9uIHRoaXMgYm9hcmRzOgogICAyeCBUeXBlIEEgKFVTQiAyLjApIEhvc3QgYW5kIDF4
IE1pY3JvIEIgKFVTQiAyLjApIE9URywgZXRoZXJuZXQKICAgMTAvMTAwLzEwMDAsIFdpRmkgNSBH
SHogJiAyLjRHSHosIC4uLgogIC1BZGQgU1RNRlggc3VwcG9ydCBlbiBzdG0zMm1wMTU3Yy1ldjEg
YW5kIGVuYWJsZSBqb3lzdGljayBjb25uZWN0ZWQgb24KICAgaXQuCiAgLUFkZCBJMlMgYW5kIFNB
SSBzdXBwb3J0IG9uIHN0bTMybXAxNTdjLgogIC1BZGQgYW5kIGVuYWJsZSBzdXBwb3J0IG9mIFZp
dmFudGUgR1BVIG9uIHN0bTMybXAxNTcgRUQxIGFuZCBESzEgYm9hcmRzCiAgIChFVjEgYW5kIERL
MiBpbmhlcml0IG9mIGl0KS4KICAtQWRkIGNhbWVyYSBzdXBwb3J0OgogICAtQWRkIERDTUkgc3Vw
cG9ydCBvbiBzdG0zMm1wMTU3YyBTT0MKICAgLUVuYWJsZWQgT1Y1NjQwIGNhbWVyYSBzdXBwb3J0
IG9uIHN0bTMybXAxNTdjLWV2MSBib2FyZAogIC1FbmFibGUgaGRtaSBicmlkZ2Ugc2lpOTAyMiAm
IGRpc3BsYXkgY29udHJvbGxlciBvbiBzdG0zMm1wMTU3Yy1kazEKICAgYm9hcmQuCgpNQ1UgcGFy
dDoKICAtQWRkIFNUTUZYIHN1cHBvcnQgZW4gc3RtMzI3NDZnLWV2YWwgYW5kIGVuYWJsZSBjb25u
ZWN0aW9ucyBvbiBpdDoKICAgbGVkcyBhbmQgam95c3RpY2sKCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQWxleGFuZHJlIFRv
cmd1ZSAoMSk6CiAgICAgICBBUk06IGR0czogc3RtMzI6IHVzZSBkZWRpY2F0ZWQgZmlsZXMgdG8g
bWFuYWdlIHN0bTMybXAxNTcgcGFja2FnZXMKCkFtZWxpZSBEZWxhdW5heSAoNSk6CiAgICAgICBB
Uk06IGR0czogc3RtMzI6IGFkZCBTVE1GWCBzdXBwb3J0IG9uIHN0bTMyNzQ2Zy1ldmFsCiAgICAg
ICBBUk06IGR0czogc3RtMzI6IGFkZCBqb3lzdGljayBzdXBwb3J0IG9uIHN0bTMyNzQ2Zy1ldmFs
CiAgICAgICBBUk06IGR0czogc3RtMzI6IGFkZCBvcmFuZ2UgYW5kIGJsdWUgbGVkcyBvbiBzdG0z
Mjc0NmctZXZhbAogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQgU1RNRlggc3VwcG9ydCBvbiBz
dG0zMm1wMTU3Yy1ldjEKICAgICAgIEFSTTogZHRzOiBzdG0zMjogYWRkIGpveXN0aWNrIHN1cHBv
cnQgb24gc3RtMzJtcDE1N2MtZXYxCgpDaHJpc3RvcGhlIFJvdWxsaWVyICgxKToKICAgICAgIEFS
TTogZHRzOiBzdG0zMjogcmVwbGFjZSByZ21paSBtb2RlIHdpdGggcmdtaWktaWQgb24gc3RtMzJt
cDE1IGJvYXJkcwoKSHVndWVzIEZydWNoZXQgKDMpOgogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBh
ZGQgRENNSSBjYW1lcmEgaW50ZXJmYWNlIHN1cHBvcnQgb24gc3RtMzJtcDE1N2MKICAgICAgIEFS
TTogZHRzOiBzdG0zMjogYWRkIERDTUkgcGlucyB0byBzdG0zMm1wMTU3YwogICAgICAgQVJNOiBk
dHM6IHN0bTMyOiBlbmFibGUgT1Y1NjQwIGNhbWVyYSBvbiBzdG0zMm1wMTU3Yy1ldjEgYm9hcmQK
Ckx1ZG92aWMgQmFycmUgKDIpOgogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQgcGluY3RybCBz
bGVlcCBjb25maWcgZm9yIHFzcGkgb24gc3RtMzJtcDE1N2MtZXYxCiAgICAgICBBUk06IGR0czog
c3RtMzI6IGFkZCBqZWRlYyBjb21wYXRpYmxlIGZvciBub3IgZmxhc2ggb24gCnN0bTMybXAxNTdj
LWV2MQoKTWFuaXZhbm5hbiBTYWRoYXNpdmFtICg0KToKICAgICAgIEFSTTogZHRzOiBzdG0zMjog
QWRkIG1pc3NpbmcgcGluY3RybCBkZWZpbml0aW9ucyBmb3IgU1RNMzJNUDE1NwogICAgICAgZHQt
YmluZGluZ3M6IGFybTogc3RtMzI6IENvbnZlcnQgU1RNMzIgU29DIGJpbmRpbmdzIHRvIERUIHNj
aGVtYQogICAgICAgZHQtYmluZGluZ3M6IGFybTogc3RtMzI6IERvY3VtZW50IEF2ZW5nZXI5NiBk
ZXZpY2V0cmVlIGJpbmRpbmcKICAgICAgIEFSTTogZHRzOiBzdG0zMjogQWRkIEF2ZW5nZXI5NiBk
ZXZpY2V0cmVlIHN1cHBvcnQgYmFzZWQgb24gClNUTTMyTVAxNTdBCgpPbGl2aWVyIE1veXNhbiAo
NSk6CiAgICAgICBBUk06IGR0czogc3RtMzI6IGFkZCBzYWkgc3VwcG9ydCBvbiBzdG0zMm1wMTU3
YwogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQgc2FpIHBpbnMgbXV4aW5nIG9uIHN0bTMybXAx
NTcKICAgICAgIEFSTTogZHRzOiBzdG0zMjogYWRkIGkycyBzdXBwb3J0IG9uIHN0bTMybXAxNTdj
CiAgICAgICBBUk06IGR0czogc3RtMzI6IGFkZCBpMnMgcGlucyBtdXhpbmcgb24gc3RtMzJtcDE1
NwogICAgICAgQVJNOiBkdHM6IHN0bTMyOiBhZGQgc2FpIGlkIHJlZ2lzdGVycyB0byBzdG0zMm1w
MTU3YwoKUGllcnJlLVl2ZXMgTU9SRFJFVCAoMyk6CiAgICAgICBBUk06IGR0czogc3RtMzI6IEFk
ZCBWaXZhbnRlIEdQVSBzdXBwb3J0IG9uIFNUTTMyTVAxNTdjCiAgICAgICBBUk06IGR0czogc3Rt
MzI6IGVuYWJsZSBWaXZhbnRlIEdQVSBzdXBwb3J0IG9uIHN0bTMybXAxNTdjLWVkMSBib2FyZAog
ICAgICAgQVJNOiBkdHM6IHN0bTMyOiBlbmFibGUgVml2YW50ZSBHUFUgc3VwcG9ydCBvbiBzdG0z
Mm1wMTU3YS1kazEgYm9hcmQKCllhbm5pY2sgRmVydHLDqSAoMyk6CiAgICAgICBBUk06IGR0czog
c3RtMzI6IEFkZCBJMkMgMSBjb25maWcgZm9yIHN0bTMybXAxNTdhLWRrMQogICAgICAgQVJNOiBk
dHM6IHN0bTMyOiBlbmFibGUgZGlzcGxheSBvbiBzdG0zMm1wMTU3Yy1kazEgYm9hcmQKICAgICAg
IEFSTTogZHRzOiBzdG0zMjogYWRkIHBvd2VyIHN1cHBseSBvZiBybTY4MjAwIG9uIHN0bTMybXAx
NTdjLWV2MQoKICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vc3RtMzIvc3RtMzIudHh0ICAg
ICAgICB8ICAxMCAtCiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N0bTMyL3N0bTMyLnlh
bWwgICAgICAgfCAgMzEgKysKICBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgMSArCiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzI3NDZnLWV2YWwu
ZHRzICAgICAgICAgICAgICAgfCAgNjYgKysrKysKICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTU3LXBpbmN0cmwuZHRzaSAgICAgICAgICB8IDI0NiArKysrKysrKysrKysrKysrCiAgYXJjaC9h
cm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtYXZlbmdlcjk2LmR0cyAgICAgICAgfCAzMjEgCisrKysr
KysrKysrKysrKysrKysrKwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWRrMS5kdHMg
ICAgICAgICAgICAgIHwgIDcwICsrKystCiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2Mt
ZWQxLmR0cyAgICAgICAgICAgICAgfCAgMTggKy0KICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTU3Yy1ldjEuZHRzICAgICAgICAgICAgICB8IDEyNSArKysrKysrLQogIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N0bTMybXAxNTdjLmR0c2kgICAgICAgICAgICAgICAgIHwgMTgwICsrKysrKysrKysrKwog
IGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTd4YWEtcGluY3RybC5kdHNpICAgICAgIHwgIDkw
ICsrKysrKwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTd4YWItcGluY3RybC5kdHNpICAg
ICAgIHwgIDYyICsrKysKICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3eGFjLXBpbmN0cmwu
ZHRzaSAgICAgICB8ICA3OCArKysrKwogIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTd4YWQt
cGluY3RybC5kdHNpICAgICAgIHwgIDYyICsrKysKICAxNCBmaWxlcyBjaGFuZ2VkLCAxMzQ1IGlu
c2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQogIGRlbGV0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N0bTMyL3N0bTMyLnR4dAogIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3N0bTMyL3N0
bTMyLnlhbWwKICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
N2EtYXZlbmdlcjk2LmR0cwogIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9z
dG0zMm1wMTU3eGFhLXBpbmN0cmwuZHRzaQogIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9i
b290L2R0cy9zdG0zMm1wMTU3eGFiLXBpbmN0cmwuZHRzaQogIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3eGFjLXBpbmN0cmwuZHRzaQogIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3eGFkLXBpbmN0cmwuZHRzaQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
