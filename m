Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6314D1B8EF8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMvs5GBWainXWGI/G1bnXKJwbgSIHTvjFWsxcLXBuG8=; b=Yk1E/iAyIKeJ+O
	JJMVe7CLwbF1e/OWxh7+tdvEKcpwkbNhXnjSoGCc+VKDAs6FBXqWixnBjrtJwvF1e33O8t7uVDPda
	kwFLUgWjDHmqH9qop+65pv01ulk8TJRYZLQR+P0+dUy9FcKGOVchCGDpcHoMt5AnnLRj+sWtlCz0Z
	kAtJwE6trXo2FhyiSa61NDO8TbuC7rMrMr/2VxjJ0x72B7J/LuTdFNQLgJK4tSezqEVOP1ijyw9w8
	KuqIrAsBOmezIDq5NcVAlkeiwBpPwr5HqJA9dlnogIKG5ziPK13CRdnNXgYIawRILu93RFQccbQeS
	Wn3laF+Z5tQf3YrG6ERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSek1-0003Tk-MU; Sun, 26 Apr 2020 10:42:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSeix-0002vE-Fu
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id j1so16991074wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8DEFjpIBB2sTg55bEJY9HmamuD/w0H5V9QfSFLKTLl8=;
 b=GVicEZ765w25hm0QJA+jwt0ntOUVHGzU9apsShWdCViWNo+JW8gkmx1xPtwvshP74j
 VYqJhWwIC0eV71oza4ntOhdpqsMRu+orFdBftGB25Etp3vpE/9ii/nu++7U7F2J8k2zK
 l/GzHn5k7vhwEcM0qfL0mJRJb71V83bYw1ZEBudc5ldbv4G+B3iNdrGZDFkxyFMsbDag
 r0qbzmpTLzDzzEeqPMfRXsW7ITVB5wAbd6arZYfDCVZbjOLQrpxNbr/4chxw2EwjKUkT
 mce++iqxtrMy4UApTygqhmi5QSGuyRMKiy/hphzs9uYIblE5yGqcHgnDnIq/9YW4QBx5
 NvvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8DEFjpIBB2sTg55bEJY9HmamuD/w0H5V9QfSFLKTLl8=;
 b=CPVwdWUowWD2TUf/cUxwvzpdtIQkPdltiTuJIKIqbBE8e3rblxWWt7vdP/h3gOgr4c
 N+1jII8q15joTrMiX7ojUp8KgAYpTxmdxswPvqMw+icNfVIg599tfL+F2UHNCCSUJ7Uf
 fswpdUust82MD0i6SdqmSunVdKfxgSAIIvIZN02hacMakf3seIML7IhBxDkFfvD1eS5L
 Lg52JSoJKLMF7X9VjAq47qgCKOQuxOYwEn9SsDYHSfWOyK39tTlsxHbThMEvkkO/QXQR
 5jd9c9iPB/Xv/wmlQnsi0Q336JluS1UCzkg33eOXRhpgsEy+pRnlp/K4aL6MfP3TOdUo
 3ikQ==
X-Gm-Message-State: AGi0PuYzGvj+nVmNvPD1sLHrV8JSILC2rf8SqXzzGqhv193XlEKgtNBn
 sy+xzFgW0H6RsJ3GdH73vIw=
X-Google-Smtp-Source: APiQypKL+/Zpp7aS/3Z23c8bef82x/2zXan/kO9l+XrOWepY6IjRW6LLnp9w9zsWrcTRH1NOiBrWxg==
X-Received: by 2002:a5d:694a:: with SMTP id r10mr21760639wrw.228.1587897679839; 
 Sun, 26 Apr 2020 03:41:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 1/7] ASoC: sun4i-i2s: Adjust LRCLK width
Date: Sun, 26 Apr 2020 12:41:09 +0200
Message-Id: <20200426104115.22630-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426104115.22630-1-peron.clem@gmail.com>
References: <20200426104115.22630-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034123_536004_7181D92A 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
