Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3115117A5DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 13:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p0u9dGyaYlpV42wYTYbjW/stVKZ/Nd8JuEwI6mGymUg=; b=e5yis5N3+S4XBW
	olPepRKKF2v7wMKqjONoiEBNQhTPcJD7ECCPoXktTeV9O7DJimknB++6irh7t3hwesFqmORhlrdSD
	D+J8+hV4KrAAEYEWr41gfUm3YXR0df2sPdLJNnu9WISjQDl9QSZo84vXYu1th/TAq7ny6li/Fdl5v
	yAgZWxyt8dClbny7rvg78OqAlfwn1pXWPz1FeBAQ8kbJm9gqyI4ZxAAccDq090244TkOd3prGNF+9
	mSNLqr0yodyGO5NrrBIFdXXF7NHEgf4ZFzx5Kr767nnWdVtPppZgPurEne8jO29OGsHUsCwuL3V8X
	JQZ3oqvU2d3TcRSWmPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9q5y-0005zK-FS; Thu, 05 Mar 2020 12:59:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9q5p-0005yb-OX
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 12:59:15 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 025Cs3FF003395; Thu, 5 Mar 2020 13:59:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=kbeBInStQhKprtBz37U6vPmYbsT1Uo2/O0T4DgkAcNY=;
 b=GTfuLgWr+dR73eql1QKTbZLeG6eq6ns1Iv5DiF9uX2hDbRCKWqwjlBDVfb+/teeEG7PJ
 ZyRLcDGXykZoZrgi3thbNAxS6LyIescWGoQ794VRudExN/1Z43VaQdxgntPrb/SYYm8s
 aMZlzlL2MLBjShwgdeGCQXxoGd4TrrY57F4Ut+8EPR/LdOD6Uwf1LWasQY27kiaNvpe2
 GCyLkwJGcUmk8kCVX5/fa1LYGP9Tlo5wjFmduBAmNzfEQy//TGjDJu12XyOOcHsDmdXQ
 XpVGQjNZO03SXMFFk9+jvCAIvBEkjImqwpdJzOlg43lZoUmSgvLSdVerN31cIxf3bVdj bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yfem17xvs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 05 Mar 2020 13:59:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 98F6710002A;
 Thu,  5 Mar 2020 13:59:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A33152ADD8F;
 Thu,  5 Mar 2020 13:59:01 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 5 Mar 2020 13:59:00
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: stm32f7: do not backup read-only PECR register
Date: Thu, 5 Mar 2020 13:59:01 +0100
Message-ID: <1583413141-1268-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-05_03:2020-03-05,
 2020-03-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_045914_258216_AA1020AF 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIFBFQ1IgcmVnaXN0ZXIgcHJvdmlkZXMgcmVjZWl2ZWQgcGFja2V0IGNvbXB1dGVkIFBFQyB2
YWx1ZS7CoApJdCBtYWtlcyBubyBzZW5zZSByZXN0b3JpbmcgaXRzIHZhbHVlIGFmdGVyIGEgcmVz
ZXQsIGFuZCBhbnl3YXksCmFzIHJlYWQtb25seSByZWdpc3RlciBpdCBjYW5ub3QgYmUgcmVzdG9y
ZWQuCgpGaXhlczogZWE2ZGQyNWRlZWI1ICgiaTJjOiBzdG0zMmY3OiBhZGQgUE1fU0xFRVAgc3Vz
cGVuZC9yZXN1bWUgc3VwcG9ydCIpClNpZ25lZC1vZmYtYnk6IEFsYWluIFZvbG1hdCA8YWxhaW4u
dm9sbWF0QHN0LmNvbT4KLS0tCiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0bTMyZjcuYyB8IDQg
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1zdG0zMmY3LmMgYi9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXN0bTMy
ZjcuYwppbmRleCAzNzg5NTZhYzZkMWQuLjRkNzQwMWQ2MmI3MSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9pMmMvYnVzc2VzL2kyYy1zdG0zMmY3LmMKKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1z
dG0zMmY3LmMKQEAgLTE3Niw3ICsxNzYsNiBAQAogICogQGNyMjogQ29udHJvbCByZWdpc3RlciAy
CiAgKiBAb2FyMTogT3duIGFkZHJlc3MgMSByZWdpc3RlcgogICogQG9hcjI6IE93biBhZGRyZXNz
IDIgcmVnaXN0ZXIKLSAqIEBwZWNyOiBQRUMgcmVnaXN0ZXIKICAqIEB0bWdyOiBUaW1pbmcgcmVn
aXN0ZXIKICAqLwogc3RydWN0IHN0bTMyZjdfaTJjX3JlZ3MgewpAQCAtMTg0LDcgKzE4Myw2IEBA
IHN0cnVjdCBzdG0zMmY3X2kyY19yZWdzIHsKIAl1MzIgY3IyOwogCXUzMiBvYXIxOwogCXUzMiBv
YXIyOwotCXUzMiBwZWNyOwogCXUzMiB0bWdyOwogfTsKIApAQCAtMjE0Niw3ICsyMTQ0LDYgQEAg
c3RhdGljIGludCBzdG0zMmY3X2kyY19yZWdzX2JhY2t1cChzdHJ1Y3Qgc3RtMzJmN19pMmNfZGV2
ICppMmNfZGV2KQogCWJhY2t1cF9yZWdzLT5jcjIgPSByZWFkbF9yZWxheGVkKGkyY19kZXYtPmJh
c2UgKyBTVE0zMkY3X0kyQ19DUjIpOwogCWJhY2t1cF9yZWdzLT5vYXIxID0gcmVhZGxfcmVsYXhl
ZChpMmNfZGV2LT5iYXNlICsgU1RNMzJGN19JMkNfT0FSMSk7CiAJYmFja3VwX3JlZ3MtPm9hcjIg
PSByZWFkbF9yZWxheGVkKGkyY19kZXYtPmJhc2UgKyBTVE0zMkY3X0kyQ19PQVIyKTsKLQliYWNr
dXBfcmVncy0+cGVjciA9IHJlYWRsX3JlbGF4ZWQoaTJjX2Rldi0+YmFzZSArIFNUTTMyRjdfSTJD
X1BFQ1IpOwogCWJhY2t1cF9yZWdzLT50bWdyID0gcmVhZGxfcmVsYXhlZChpMmNfZGV2LT5iYXNl
ICsgU1RNMzJGN19JMkNfVElNSU5HUik7CiAKIAlwbV9ydW50aW1lX3B1dF9zeW5jKGkyY19kZXYt
PmRldik7CkBAIC0yMTc4LDcgKzIxNzUsNiBAQCBzdGF0aWMgaW50IHN0bTMyZjdfaTJjX3JlZ3Nf
cmVzdG9yZShzdHJ1Y3Qgc3RtMzJmN19pMmNfZGV2ICppMmNfZGV2KQogCXdyaXRlbF9yZWxheGVk
KGJhY2t1cF9yZWdzLT5jcjIsIGkyY19kZXYtPmJhc2UgKyBTVE0zMkY3X0kyQ19DUjIpOwogCXdy
aXRlbF9yZWxheGVkKGJhY2t1cF9yZWdzLT5vYXIxLCBpMmNfZGV2LT5iYXNlICsgU1RNMzJGN19J
MkNfT0FSMSk7CiAJd3JpdGVsX3JlbGF4ZWQoYmFja3VwX3JlZ3MtPm9hcjIsIGkyY19kZXYtPmJh
c2UgKyBTVE0zMkY3X0kyQ19PQVIyKTsKLQl3cml0ZWxfcmVsYXhlZChiYWNrdXBfcmVncy0+cGVj
ciwgaTJjX2Rldi0+YmFzZSArIFNUTTMyRjdfSTJDX1BFQ1IpOwogCiAJcG1fcnVudGltZV9wdXRf
c3luYyhpMmNfZGV2LT5kZXYpOwogCi0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
