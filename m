Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F59280A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zEOuFBGGcE5j2+lgwhGgZ9eyWm3qhT1DunJ6tDlytE=; b=IsJ2kieS4TcbjM
	ahZUF4eRj0lsOWBsKgntap4l3I5Fz88+bb0dtnLsVsXRx5fg8ve6Ltqgda1Tcsu2MsVVmjpNzn+ys
	KXoGDhd+sFzzXGLXSQdaY6KnE7EuTE3/EnZlWAOgX/TUMXRv0ZQKr8QXZS0g2Hsl+trj2sZTv8Vm/
	dvxfvQZO+Luc3rfGUx6ZG5HLr3iwLdWlFErc+aQn0b8S0OFyquWtyvQLawzVEHizf804XECyHx3Hw
	n61idZzIWYaHZOC7UcD/qvlYE5EkCcl8OsIZ+F6PF3JpPldjJBd8JymEF/qipC/1fx/lcRzn1K7IT
	LSvfSuowf72eKBApbEZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpNE-0006t0-Mi; Thu, 23 May 2019 15:11:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpMx-0006l5-5l
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:11:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so2107110wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 08:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1UxkviFcc2uyTwrd3ZvJWwn1Eze38luDkUCGodjsAiw=;
 b=En5KRv+QW8l+oUcFzMAxToxn8fTbpPFxninqX4PPYPg+ijK1iD5FuXyaewyALXg76d
 THu3i0BjLs7YAzwNQzles29+JYXC4fBm8Y0raXJvQ8zlQHs21P5SyT/7/AUu/DvJu+S2
 DoIpeliYoTF20cM8TTmLlyk0nR9L2DJscL9TKagdeWV0Buci77lCNaacPjt2wouIHe/N
 21SAG6uGdFruB5VhYygkCSU1rS5Fy+SbB0rANS12o9Oqg1xjOVQJ/Fqoa21Kcwy5W9vz
 vehaSbHG1R+XiATyKPU0jRTw3z9WI682BpJqWj1iLj9eNHamVayfmxbUwW+v5VEWv7ON
 hpgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1UxkviFcc2uyTwrd3ZvJWwn1Eze38luDkUCGodjsAiw=;
 b=CbaZMBq8ue8LqZ+/9LlB/2AQS+7xnNe0B4wNYCNTvorgzX+7ju6olxbT1ckG11hWSI
 GFrYxrmhhwl7nk/mteOGpEZQDT4z0/bV0dtQ+Y8SWfJUyZp5dbqLSlOY6cBzI5LUv8wh
 j2KrsVYl6lqV1DLdweEkL88xHZbUiQaWzeLtAnc4C6xuOPsa1n2AVqt4miQf9ipnzD8S
 ld0f2KG0jA52KwBb/UzeykIMopUHymKn9NuWj3eMB7x5MzrLVfnZqKmBAurCnIAOnqiq
 aYpXSOTka01w2T3ThtizLvqO/HsPNNCfK5W5exn4cWpiKB4mqJEtFK0lvMR/nozKsgd8
 YjJg==
X-Gm-Message-State: APjAAAX5UEj+bdpFdCm19/sZDtolT5Ixu/FuUVYl/7WiZgaPtz7Rh6Dk
 upFMzqIVzvGQ+P0lOrD2Jf4=
X-Google-Smtp-Source: APXvYqyBnXGEzrQH5EIcjEGjEn2UAjpqSm02cOAUGl5CqQy0YExdI5o/WI12QkAdGOi6Uf//0UqU4g==
X-Received: by 2002:a1c:e009:: with SMTP id x9mr11880160wmg.117.1558624257108; 
 Thu, 23 May 2019 08:10:57 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id q15sm11436324wrr.19.2019.05.23.08.10.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:10:56 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
Date: Thu, 23 May 2019 17:10:47 +0200
Message-Id: <20190523151050.27302-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523151050.27302-1-peron.clem@gmail.com>
References: <20190523151050.27302-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_081059_231723_4E7CC710 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHNpbWlsYXIgd2F0Y2hkb2cgYXMgdGhlIEE2NCB3aGljaCBpcyBh
bHJlYWR5CmEgY29tcGF0aWJsZSBvZiB0aGUgQTMxLgoKVGhpcyBjb21taXQgYWRkIHRoZSBINiBj
b21wYXRpYmxlLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdt
YWlsLmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cv
c3VueGktd2R0LnR4dCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhp
LXdkdC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3Vu
eGktd2R0LnR4dAppbmRleCA0NjA1NTI1NGU4ZGQuLmU2NTE5OGQ4MmEyYiAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhpLXdkdC50eHQK
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N1bnhpLXdk
dC50eHQKQEAgLTYsNiArNiw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAJImFsbHdpbm5lcixz
dW40aS1hMTAtd2R0IgogCSJhbGx3aW5uZXIsc3VuNmktYTMxLXdkdCIKIAkiYWxsd2lubmVyLHN1
bjUwaS1hNjQtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCisJImFsbHdpbm5lcixzdW41
MGktaDYtd2R0IiwiYWxsd2lubmVyLHN1bjZpLWEzMS13ZHQiCiAJImFsbHdpbm5lcixzdW5pdi1m
MWMxMDBzLXdkdCIsICJhbGx3aW5uZXIsc3VuNGktYTEwLXdkdCIKIC0gcmVnIDogU3BlY2lmaWVz
IGJhc2UgcGh5c2ljYWwgYWRkcmVzcyBhbmQgc2l6ZSBvZiB0aGUgcmVnaXN0ZXJzLgogCi0tIAoy
LjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
