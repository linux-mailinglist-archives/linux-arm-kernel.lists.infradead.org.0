Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472B31AF595
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMvs5GBWainXWGI/G1bnXKJwbgSIHTvjFWsxcLXBuG8=; b=oY+E40lGd1Xfz6
	8EWNeMq7Hlp9eFjhHtMOuEPurFA6gMK3IB/tMHfOJOgKBtn+x09k58KcHcetnDZZT71lB2w+40BZR
	0rwf8LnknrZSd9yJq/8Uynf8UxrQ++7VXoJLrb73KIG3AjZGUO5iVckKlGVCu+s6dbvUfE3W/loni
	6iwTCqAsO3v6D8oi4PszH8PyGd4JKnX1KHYQth/IfkNksSuMdFncSoZX9N5Sa03ge02hUcZ485XTe
	gXBTSKYxRfxxp2Gi3u+jepUcqFlLV4CBWPXkjiDP0SeQ6J5lluoLfgx6ulceKPo5GDczGNa0CoBqa
	hdKYJo/YE3avNAYrLD+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwDF-0007aJ-Si; Sat, 18 Apr 2020 22:45:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCX-0007QQ-EJ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:42 +0000
Received: by mail-wr1-x443.google.com with SMTP id j2so7391153wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8DEFjpIBB2sTg55bEJY9HmamuD/w0H5V9QfSFLKTLl8=;
 b=c8cF3XH6qZJcJPkN9nADZfE8ZdxqJJNLek9MBPzd976KNgLjfAOvhXssjXgfR0qUXZ
 z5SbODX1HI8kSbTahGSNYROR6DUal2jkuISdlMolZvPcEr70LFjcykcK1MP0UOcKBhIU
 Ff5QtHea/ZcWq77sRWFG1qP7w6fn1pfjPGu5tFfutPE2Hj96sJkLdvi4XAKDYYyMKNqx
 R00g3cSrpQeA/7DOSY1CCSiEIqPbTrTVBzDoq3hp++7L21hPafhxjXx5u7ZowEpl0AKz
 t2dofmvt7RGD5O8ClZ3VCGllQKrDMZ7oHQNsKAdP0RKpixpqN3OalmxOd//da9ZJC8dw
 C0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8DEFjpIBB2sTg55bEJY9HmamuD/w0H5V9QfSFLKTLl8=;
 b=WkhHwHJ/GVCUJUMeLlLUeWjCWuLgWQsgyLVIVTJb3qTsq/7dNIIpd9ATrw+cyC9Ud6
 w22b8MwYLyvuhkp7+PqedRSf5fIBit2KMHdLHkjhMmqlupmN0jCeVLnewzfSZRkFw29B
 8jujWX63O0egKr5/MolyiZzhcxzpfq1/W/3yirLOL2XT2yPUcOWytRNQFYVZ23zneMlf
 5CEDBAhccRF6q9zmQaJoiuyqBtWvJSh50RQ9Jwi/EkVHN06PkvVyO69XU6MrkxYf5Yml
 mSo5x1bySAOOt5LWC9gmZflFHXwVZfJlmbD9dEQCKl2dSmqdPbb2a3Yd/xVvvcH3npJc
 jGPg==
X-Gm-Message-State: AGi0PubDCi8iNjoRTtxX/qHkwCcnplebWiCSA9F0IPE77uCnzl9YjlIt
 +Yx+T63lTOes1Zc2pxB04fo=
X-Google-Smtp-Source: APiQypLzc6502sCH/dr5KEi1k3BQRUxUNmwEVNQJvwCGsDJys1dWkVAT0BXLftMcmhDCZMKxtYFX6Q==
X-Received: by 2002:a5d:5304:: with SMTP id e4mr10337697wrv.87.1587249879909; 
 Sat, 18 Apr 2020 15:44:39 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:39 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 1/7] ASoC: sun4i-i2s: Adjust LRCLK width
Date: Sun, 19 Apr 2020 00:44:29 +0200
Message-Id: <20200418224435.23672-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418224435.23672-1-peron.clem@gmail.com>
References: <20200418224435.23672-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154441_478132_FE79166E 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpTb21lIGNvZGVjcyBz
dWNoIGFzIGkycyBiYXNlZCBIRE1JIGF1ZGlvIGFuZCB0aGUgUGluZTY0IERBQyByZXF1aXJlCmEg
ZGlmZmVyZW50IGFtb3VudCBvZiBiaXQgY2xvY2tzIHBlciBmcmFtZSB0aGFuIHdoYXQgaXMgY2Fs
Y3VsYXRlZApieSB0aGUgc2FtcGxlIHdpZHRoLiBVc2UgdGhlIHZhbHVlcyBvYnRhaW5lZCBieSB0
aGUgdGRtIHNsb3QgYmluZGluZ3MKdG8gYWRqdXN0IHRoZSBMUkNMSyB3aWR0aCBhY2NvcmRpbmds
eS4KClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0K
IHNvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIGIv
c291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCmluZGV4IGQwYThkNTgxMGMwYS4uNDE5OGE1NDEw
YmY5IDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKKysrIGIvc291bmQv
c29jL3N1bnhpL3N1bjRpLWkycy5jCkBAIC00NTUsNiArNDU1LDkgQEAgc3RhdGljIGludCBzdW44
aV9pMnNfc2V0X2NoYW5fY2ZnKGNvbnN0IHN0cnVjdCBzdW40aV9pMnMgKmkycywKIAkJcmV0dXJu
IC1FSU5WQUw7CiAJfQogCisJaWYgKGkycy0+c2xvdF93aWR0aCkKKwkJbHJja19wZXJpb2QgPSBp
MnMtPnNsb3Rfd2lkdGg7CisKIAlyZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjRJ
X0kyU19GTVQwX1JFRywKIAkJCSAgIFNVTjhJX0kyU19GTVQwX0xSQ0tfUEVSSU9EX01BU0ssCiAJ
CQkgICBTVU44SV9JMlNfRk1UMF9MUkNLX1BFUklPRChscmNrX3BlcmlvZCkpOwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
