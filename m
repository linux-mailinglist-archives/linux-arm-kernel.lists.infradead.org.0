Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C02418F1B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:25:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xvyV1yRePrG8Mm2g5wxbhmZ6nlCxxX1OA9QygClqWk0=; b=ihF+OkJEpI6aPH
	5SrjlBWJ1BoVuCjSIUZLcfSUi0QXADETbi/z7JdgE1NhcE87vFDhNRypTI16PB6eOQ3Mf/svR8aKd
	Js+Dkb4bMM2ESYaDrOjNSFqS4fkngFZpsehz6mmDk0fY5zROrOsO8J4ywMhGmrRFxGpQX1/Mq9VNy
	7TBEHrcTohPkhEobITLsa+tUcgluGwNY/9tSC1u6+z+M/KK2M53Xxqbh0KBOvpIUU6ZMl2JU/Pm0d
	J+GoVzKjJ2asKrAGGLnf4ndanSlUoJ5owaf4CejCPsps34VU/qXpatm3PQ65znxSNnVOoxHP72Aj3
	5xSrofm73ezDjAO9GaIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJKK-0004V2-0t; Mon, 23 Mar 2020 09:24:56 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJK8-0004Ts-Nr
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:24:45 +0000
Received: by mail-pl1-x634.google.com with SMTP id v23so1631773ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 02:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8bdTHn3nXQn2EfuwJRXtyjGGloibRrt8s6wxTkj/U+A=;
 b=bXay2jdTdHaTyCEl44b+RKKSYect2Ugntrm1gnY07gcLAJusH9cN2GgkpbbAJdKd8i
 yRjbl+Q+1td9SpYJfXsilb0rCN4NqGqMZQ858xJUkEU3gq1dTOztsn6pSHB/F+fDC1Kp
 8UUgSzinRltm+e4NTfpjI9x2LZhCXqprz5rJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8bdTHn3nXQn2EfuwJRXtyjGGloibRrt8s6wxTkj/U+A=;
 b=e8VIMpv2hq20nEy1iEnJYZl733B7RtMAuHl1Azs2d9fPT58sd9qbJGoJfyUv2BXh1x
 PBBcWRcvT9iQQwCarhjwWU6cbWn9R3exdjQfHSFf/sUOK5xXEdkKwh6NHyZUIASy/d2r
 D+NANy3sAmLfIyBJgFIVBT2TUeZOXCigN5WCTGBBJ/Jh9biuhy9JNC+CJAkZBCHGAu/z
 Uj8pst/sIGsySNAaxXn/0v5kOfp/IvN2izVDsNoVv/ejxwgIilYS3S0J4aDT4RIBXTpo
 8sqeNFqHI06nkhzxAandn9hPqVCtlfoARxJY+uSjkQbKSkDj7TJjUqOzzkJ2LF0q5cLC
 WVqw==
X-Gm-Message-State: ANhLgQ1qDYQRsC0UbF2FuUlHQeTcSSDobTroTif5X3CZ4M8Ov5bMeOVP
 3ffZkQt1heIlwfqh62Xp9tDOJQ==
X-Google-Smtp-Source: ADFU+vs4WZxYQEwx+zNTHgg6ZUe1A1BpGJdICQls2V2lfHdhLmgMWfyrbNZmAfQSvcLz5E9ekx460g==
X-Received: by 2002:a17:902:ed03:: with SMTP id
 b3mr1634171pld.247.1584955482641; 
 Mon, 23 Mar 2020 02:24:42 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t186sm1093068pgd.43.2020.03.23.02.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 02:24:41 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Handle return value and remove unnecessary check
Date: Mon, 23 Mar 2020 14:54:22 +0530
Message-Id: <20200323092424.22664-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_022444_774438_4E2D6B89 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzZXJpZXMgY29udGFpbnMgZm9sbG93aW5nIGNoYW5nZXMsCjEuIEhhbmRsZSBj
bGtfZ2V0X3JhdGUoKSByZXR1cm4KMi4gcmVtb3ZlIHVubmVjZXNzYXJ5IGNoZWNrIG9mICdkdXR5
JwoKQ2hhbmdlcyBmcm9tIHYxOgotQWRkcmVzcyBjb2RlIHJldmlldyBjb21tZW50cyBmcm9tIFV3
ZSBLbGVpbmUtS8O2bmlnLAogYWRkZWQgbW9yZSBkZXRhaWxzIHRvIGNvbW1pdCBtZXNzYWdlIAoK
UmF5YWdvbmRhIEtva2F0YW51ciAoMik6CiAgcHdtOiBiY20taXByb2M6IGhhbmRsZSBjbGtfZ2V0
X3JhdGUoKSByZXR1cm4KICBwd206IGJjbS1pcHJvYzogcmVtb3ZlIHVubmVjZXNzYXJ5IGNoZWNr
IG9mICdkdXR5JwoKIGRyaXZlcnMvcHdtL3B3bS1iY20taXByb2MuYyB8IDM1ICsrKysrKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygr
KSwgMTUgZGVsZXRpb25zKC0pCgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
