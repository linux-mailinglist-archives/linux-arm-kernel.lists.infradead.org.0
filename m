Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F7919EFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 16:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9tybO3umWNd2qJ2ZFd8VjWsc9nYRriazk9y02YZ2Cc=; b=CLjMHCkfNOC2zN
	MlQMZVo+vpxVXpDi1RJ4Tfk7Kaaqk5tU371/9sKwooTfrBeHsCGtWk1Ac8eLchGIZHe3jk8LPtZWC
	queMd9gZDFNC4obFQKpKwVSZagzGRU2Tl3n3nhGMuRq0HiARwFwsEzf62mdYIuYPT6xRVNwHHQtRm
	xJdrhn4y6zZZlmNg4QXrRVk27i2LdvfYYPNRMkcBw/ZXfyJV6zmewSVHJHZKWNOrTTLv2DEX8l0Rb
	wkKztC0mWR/j/gtDion3f7KXgqaujB925z3vcjvnFzCRKR+s8yYq1S9w+UDGCbS+5+aLhQ3PIU+SW
	cYuw/G2YQO0P5QDC4rpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6OR-0007nt-0F; Fri, 10 May 2019 14:20:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6OA-0007gJ-R0
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 14:20:44 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AE0wCX012866; Fri, 10 May 2019 16:20:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version : content-type
 : content-transfer-encoding; s=STMicroelectronics;
 bh=mN2/PHpZiNuhQcjSMoqkU4gRq3eMnfuCHcp2OPqegSs=;
 b=lBGzwU3TpxFerllyyQkW2HmZVddGgsGoVoljjlza7UVeh/1qA+dUQORhrAEq08Xk3Oo8
 5lLAr4u/pQlE8DgeIAMo0cJLFlmotckoD0djh3Tp2ghNQlX9oZXiC5dBdM+XFr4qxQ3P
 hs6DUdhEUXPHl8jXENCmHmvhdEBJnurS6HYkJWoPwU2IW7Iy2FtIPoc93U0B3yrBBlfb
 0u6oCg6D6Dd2qfaYdIGNXDELDJ9f6iDoQQ/zeXPutlM+px+pwD5xbmcXKo8Gj4XPyPsb
 o7fGdg7lmFMoAD2wzs1FERzC2l16eCfL/rr72RR8gy9jtdszVqg1Mg4872N1FmqsKic4 rA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scdjp9j1u-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 16:20:31 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8F05134;
 Fri, 10 May 2019 14:20:30 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 698C8113A;
 Fri, 10 May 2019 14:20:30 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May
 2019 16:20:30 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 10 May 2019 16:20:29
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Vincent Abriou <vincent.abriou@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, "Mark Rutland" <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/5] dt-bindings: display: stm32: add supply property to
 DSI controller
Date: Fri, 10 May 2019 16:20:19 +0200
Message-ID: <1557498023-10766-2-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_072043_177266_1AC802B1 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGRvY3VtZW50YXRpb24gb2YgYSBuZXcgcHJvcGVydHkgcGh5LWRzaS1z
dXBwbHkgdG8gdGhlClNUTTMyIERTSSBjb250cm9sbGVyLgoKU2lnbmVkLW9mZi1ieTogWWFubmlj
ayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRkYy50eHQgfCAzICsrKwogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3N0LHN0bTMyLWx0ZGMudHh0IGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRkYy50eHQKaW5kZXggM2Vi
MWI0OC4uNjBjNTRkYSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRkYy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRkYy50eHQKQEAgLTQwLDYgKzQwLDggQEAg
TWFuZGF0b3J5IG5vZGVzIHNwZWNpZmljIHRvIFNUTTMyIERTSToKIC0gcGFuZWwgb3IgYnJpZGdl
IG5vZGU6IEEgbm9kZSBjb250YWluaW5nIHRoZSBwYW5lbCBvciBicmlkZ2UgZGVzY3JpcHRpb24g
YXMKICAgZG9jdW1lbnRlZCBpbiBbNl0uCiAgIC0gcG9ydDogcGFuZWwgb3IgYnJpZGdlIHBvcnQg
bm9kZSwgY29ubmVjdGVkIHRvIHRoZSBEU0kgb3V0cHV0IHBvcnQgKHBvcnRAMSkuCitPcHRpb25h
bCBwcm9wZXJ0aWVzOgorLSBwaHktZHNpLXN1cHBseTogcGhhbmRsZSBvZiB0aGUgcmVndWxhdG9y
IHRoYXQgcHJvdmlkZXMgdGhlIHN1cHBseSB2b2x0YWdlLgogCiBOb3RlOiBZb3UgY2FuIGZpbmQg
bW9yZSBkb2N1bWVudGF0aW9uIGluIHRoZSBmb2xsb3dpbmcgcmVmZXJlbmNlcwogWzFdIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9jbG9jay1iaW5kaW5ncy50eHQKQEAg
LTEwMSw2ICsxMDMsNyBAQCBFeGFtcGxlIDI6IERTSSBwYW5lbAogCQkJY2xvY2stbmFtZXMgPSAi
cGNsayIsICJyZWYiOwogCQkJcmVzZXRzID0gPCZyY2MgU1RNMzJGNF9BUEIyX1JFU0VUKERTSSk+
OwogCQkJcmVzZXQtbmFtZXMgPSAiYXBiIjsKKwkJCXBoeS1kc2ktc3VwcGx5ID0gPCZyZWcxOD47
CiAKIAkJCXBvcnRzIHsKIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKLS0gCjIuNy40CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
