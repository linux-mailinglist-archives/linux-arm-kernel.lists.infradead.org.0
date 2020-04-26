Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FCD1B8FB1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdKHOIqneyvwnduX/80zukmklYPjDlqv+98ydVqfyuM=; b=qEPfAmpvxtIUJj
	B7RPTgeu5Loemxm9RGxeHi+rO4KVymExT3MKh0Z0eNvIdiS/x/SVyCKKyjPpo1xq8qVarFci2X4/u
	8V/9fS9EBSFpt/yJwiN+gWV+FzW+WAMz13OsTWOidd8dmtb5p/O/VsSr9n9T2Try+AagrMQ3sGMVc
	GT/qiDsu+r/ASnwKnc9An/vJWFWqr5zYQJ05LU+6kJ8/+I9UexWrKwAKfwPSYSdUyPk2x3RioEs90
	UVUkCNYbydabajA9fbKRFnQJu8edft3xWg0hyhNNL6SbV0ERPAk/xI29cEylBmIo8u/Qwm9nPuK+E
	ry+TZCwCE6fU7ogYT85g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg2i-0004kz-SL; Sun, 26 Apr 2020 12:05:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1i-0001sa-K9
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id y24so17116918wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TZMguin0qF+PG0k2dkN3ezS7N4XttGAbuy5WT8MZbio=;
 b=vftiurRMFrp9UJSlnfcY2kxkimb8O8bOGD0/SAMLHFdv5zcWKBboL9WM5sV1ea85BF
 GF0dm0POD9E5MjzmtN4W/zNpXU2pvfxXp7AOmyCLXTGgIjnyRMgA6pfvMvX1wDl1lBDD
 SQwf7sA31Oar7Tia4SxX7Njri/7ko/OsMGIxiAHKIjroHMMZvEPsFRZiy5ARMwgslden
 9usgYO0DNFLef3w3B1UKuAPCXyzSyA/wU71BXEMy9Ow5aEbosnfJqfpS4zZiHjdqcQ3o
 vjzrAWq46FDqwPKwk0CQsndCFt9Qy8gNeVV5FHlGq91NQXAoWJHGpFkqVGUAWaBl9vlM
 Z57g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TZMguin0qF+PG0k2dkN3ezS7N4XttGAbuy5WT8MZbio=;
 b=hVNzm7GNCIfwXNMl4RzSzYfzXEsjDk5n7Oy2AMiGOtRY09laZ8nalAhGLeumTsPZ0S
 BTSv37+rs5Hu6/dmShixiemg8QxtRbQEaUw0rSSHe/y3hTymS54JBUn/myRZlPKnbicX
 y2R6PgnEdYH8HA2pqmqv792/iBQKDfO3Z+2gjFRNQqanvkBifaaX/wXub8hnC9eeg0Qa
 7DFrTUAvVKUcTslRmsaHq6FX3t9rYiaynHu3QP+J9XIpfM7yXzv9P8oviOj24SpeSpeS
 sDCxYZhGP27mnk1YCpgRtAIZcYr9l3rSoo/26tT092oP6o5+lzgGLY0jkqes9fQ1mRRN
 as8Q==
X-Gm-Message-State: AGi0PubFsCphv4KZ6kBVcP4nA4vVGMP/LiM3L5tV4Ycym/GgbMkbZUD9
 TkoOImyFeyFyFY75hBavLqI=
X-Google-Smtp-Source: APiQypLThTyvf1ycYY1ugZwNSBUMPwNwiXiATnmOGXr+ZmCBZ+kYsICRhwugaNkeCjuyXI87+CsDnw==
X-Received: by 2002:a1c:ed04:: with SMTP id l4mr20956181wmh.93.1587902688948; 
 Sun, 26 Apr 2020 05:04:48 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:48 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 2/7] arm: dts: sunxi: h3/h5: Add HDMI audio
Date: Sun, 26 Apr 2020 14:04:37 +0200
Message-Id: <20200426120442.11560-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050450_657630_DEF61119 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpBZGQgYSBzaW1wbGUt
c291bmRjYXJkIHRvIGxpbmsgYXVkaW8gYmV0d2VlbiBIRE1JIGFuZCBJMlMuCgpTaWduZWQtb2Zm
LWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYt
Ynk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bnhpLWgzLWg1LmR0c2kgfCAyMSArKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
c3VueGktaDMtaDUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKaW5k
ZXggOWJlMTMzNzhkNGRmLi4zYTQyNjIyOTQ5NTAgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bnhpLWgzLWg1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUu
ZHRzaQpAQCAtMTA1LDYgKzEwNSwyNSBAQAogCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCX07CiAK
KwloZG1pX3NvdW5kOiBoZG1pLXNvdW5kIHsKKwkJY29tcGF0aWJsZSA9ICJzaW1wbGUtYXVkaW8t
Y2FyZCI7CisJCXNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9ICJpMnMiOworCQlzaW1wbGUtYXVk
aW8tY2FyZCxuYW1lID0gImFsbHdpbm5lcixoZG1pIjsKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsbWNs
ay1mcyA9IDwxMjg+OworCQlzaW1wbGUtYXVkaW8tY2FyZCxmcmFtZS1pbnZlcnNpb247CisJCXN0
YXR1cyA9ICJkaXNhYmxlZCI7CisKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgeworCQkJc291
bmQtZGFpID0gPCZoZG1pPjsKKwkJfTsKKworCQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgeworCQkJ
c291bmQtZGFpID0gPCZpMnMyPjsKKwkJCWRhaS10ZG0tc2xvdC1udW0gPSA8Mj47CisJCQlkYWkt
dGRtLXNsb3Qtd2lkdGggPSA8MzI+OworCQl9OworCX07CisKIAlzb2MgewogCQljb21wYXRpYmxl
ID0gInNpbXBsZS1idXMiOwogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKQEAgLTY3Miw2ICs2OTEs
NyBAQAogCQkJZG1hcyA9IDwmZG1hIDI3PjsKIAkJCXJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfSTJT
Mj47CiAJCQlkbWEtbmFtZXMgPSAidHgiOworCQkJYWxsd2lubmVyLHBsYXliYWNrLWNoYW5uZWxz
ID0gPDg+OwogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIApAQCAtODA2LDYgKzgyNiw3
IEBACiAJCX07CiAKIAkJaGRtaTogaGRtaUAxZWUwMDAwIHsKKwkJCSNzb3VuZC1kYWktY2VsbHMg
PSA8MD47CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1kdy1oZG1pIiwKIAkJ
CQkgICAgICJhbGx3aW5uZXIsc3VuOGktYTgzdC1kdy1oZG1pIjsKIAkJCXJlZyA9IDwweDAxZWUw
MDAwIDB4MTAwMDA+OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
