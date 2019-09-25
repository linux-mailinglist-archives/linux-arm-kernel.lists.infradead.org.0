Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B63BBE22B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:16:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19v6jz+KFVY+Al7b3o5V/ZwiYLe1rPEG8YuW6XJgrXI=; b=LzUeo3kfGFDUbW
	Bc1kO2kbaONzshiJu0TNP0uei89jiBEv0reX5wJihXs83buCov5hRN9Kpr0BZx0En2jL7yjIND2jb
	uw/igyrJ8utXZGDQhXZ72CLpNIep5yU8syJmG9m9uIkUkJzVR+UknxFflnrwmDYbomVNIazbdDS8y
	0JtJJP2Dir+UKMJXnu77Zzq/a99pgVcYHAspGFDEplYtMisPNdm5R1kRGAEhug1TQC3BoEhNu6Wjg
	SilQDUp/oyczt6tjXz6mgjfnoUgjLWb5SVm1m+aECCZd8Vb+SzvW/SUdVRUocX18k0jN4EjQ6Oh0K
	MVx8WWQzg1t/evkrw9cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9xM-00066Z-4s; Wed, 25 Sep 2019 16:15:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vT-0003ws-IA
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id o18so7642973wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oTkLJDHd3Opt8Q7gQbNEv9bluAfNAUwUozJN7kv8cIw=;
 b=yF7nxogdOddiZ7APJUWvv8ZOZvf7wdIBsXoh5+aa06OqQerRa+w3xtndhPDTvbyeTs
 SxCDjPcJJ5qj5HXRHMljeXqQhUcT5u8DVC/xiVUQWc/xL7+i5gE2JMdr8DvOBarsLX5B
 EawpOjrIVlrozZgzbaV+7ympMMIMlrDR+vcF8xD93tAcRteh3dAQUd6LOhepRf1abFOU
 kJvyoTfNL3aOgWUg9OLo15VCRpFO8RzefWgCE9X6Zu++89AoZlW3h1MyeCH2qsIp0cPV
 P92XYhzshGFCxB/VVpNrKiPnXbbjfbGLkRrHxm15wdGgtvLZ667XLMgIGKtHMIEw6LVd
 7teg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oTkLJDHd3Opt8Q7gQbNEv9bluAfNAUwUozJN7kv8cIw=;
 b=rKge88bt2dJQPcOgpjpLMgEPV3HwF/UY0QbmBX1ltMQhwqX2aB+KfFxEGFINgSxDCm
 oP28JJT9Nm3ibZnOWPAVaVq2LMXUKmmdfW2BVnuSC0XMfxf/qcNFWyqbukCbMsJEo8j0
 r+6ZmBr0Jp9iQfBg5ymsrY53DrTbbBw7O9nnPJW+eKuX/f3gQcw3vdyfWAPYaaOlc/R7
 RGfWAz+5HTJuUtlLBoY328cCa8dYTDZGFC1579w5cmRiKFNqy45UrEG1ra++5+ynfOa3
 MwjECJ89mesUCO8yciU/1KT5v13V+m6j6vt41oB9Ert3FDZ/k2nhzPHqAe6xg0r34CwC
 ERZw==
X-Gm-Message-State: APjAAAWtWmfV2ieJ0KduCEGwod2ccm05Ier7HLJejukO4+RGh8j8Lx/G
 bMATipZNDMPqN7IEnW9Vyq2fGg==
X-Google-Smtp-Source: APXvYqzc7zDHo2pym+GG6Iqyv/Iy0z/3d/GbL+d0TyOdn6ZMUTam9B5o+BxEoxNyjw7X4aDT9QAIsg==
X-Received: by 2002:adf:afed:: with SMTP id y45mr10259853wrd.347.1569428038355; 
 Wed, 25 Sep 2019 09:13:58 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:57 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 08/18] crypto: testmgr - add a chacha20poly1305 test case
Date: Wed, 25 Sep 2019 18:12:45 +0200
Message-Id: <20190925161255.1871-9-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091359_702201_35AFFF5B 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a test case to the RFC7539 (non-ESP) test vector array that
exercises the newly added code path that may optimize away one
invocation of the shash when the assoclen is a multiple of the
Poly1305 block size.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/testmgr.h | 45 ++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/crypto/testmgr.h b/crypto/testmgr.h
index ef7d21f39d4a..5439b37f2b9f 100644
--- a/crypto/testmgr.h
+++ b/crypto/testmgr.h
@@ -18950,6 +18950,51 @@ static const struct aead_testvec rfc7539_tv_template[] = {
 			  "\x22\x39\x23\x36\xfe\xa1\x85\x1f"
 			  "\x38",
 		.clen	= 281,
+	}, {
+		.key	= "\x80\x81\x82\x83\x84\x85\x86\x87"
+			  "\x88\x89\x8a\x8b\x8c\x8d\x8e\x8f"
+			  "\x90\x91\x92\x93\x94\x95\x96\x97"
+			  "\x98\x99\x9a\x9b\x9c\x9d\x9e\x9f",
+		.klen	= 32,
+		.iv	= "\x07\x00\x00\x00\x40\x41\x42\x43"
+			  "\x44\x45\x46\x47",
+		.assoc	= "\x50\x51\x52\x53\xc0\xc1\xc2\xc3"
+			  "\xc4\xc5\xc6\xc7\x44\x45\x46\x47",
+		.alen	= 16,
+		.ptext	= "\x4c\x61\x64\x69\x65\x73\x20\x61"
+			  "\x6e\x64\x20\x47\x65\x6e\x74\x6c"
+			  "\x65\x6d\x65\x6e\x20\x6f\x66\x20"
+			  "\x74\x68\x65\x20\x63\x6c\x61\x73"
+			  "\x73\x20\x6f\x66\x20\x27\x39\x39"
+			  "\x3a\x20\x49\x66\x20\x49\x20\x63"
+			  "\x6f\x75\x6c\x64\x20\x6f\x66\x66"
+			  "\x65\x72\x20\x79\x6f\x75\x20\x6f"
+			  "\x6e\x6c\x79\x20\x6f\x6e\x65\x20"
+			  "\x74\x69\x70\x20\x66\x6f\x72\x20"
+			  "\x74\x68\x65\x20\x66\x75\x74\x75"
+			  "\x72\x65\x2c\x20\x73\x75\x6e\x73"
+			  "\x63\x72\x65\x65\x6e\x20\x77\x6f"
+			  "\x75\x6c\x64\x20\x62\x65\x20\x69"
+			  "\x74\x2e",
+		.plen	= 114,
+		.ctext	= "\xd3\x1a\x8d\x34\x64\x8e\x60\xdb"
+			  "\x7b\x86\xaf\xbc\x53\xef\x7e\xc2"
+			  "\xa4\xad\xed\x51\x29\x6e\x08\xfe"
+			  "\xa9\xe2\xb5\xa7\x36\xee\x62\xd6"
+			  "\x3d\xbe\xa4\x5e\x8c\xa9\x67\x12"
+			  "\x82\xfa\xfb\x69\xda\x92\x72\x8b"
+			  "\x1a\x71\xde\x0a\x9e\x06\x0b\x29"
+			  "\x05\xd6\xa5\xb6\x7e\xcd\x3b\x36"
+			  "\x92\xdd\xbd\x7f\x2d\x77\x8b\x8c"
+			  "\x98\x03\xae\xe3\x28\x09\x1b\x58"
+			  "\xfa\xb3\x24\xe4\xfa\xd6\x75\x94"
+			  "\x55\x85\x80\x8b\x48\x31\xd7\xbc"
+			  "\x3f\xf4\xde\xf0\x8e\x4b\x7a\x9d"
+			  "\xe5\x76\xd2\x65\x86\xce\xc6\x4b"
+			  "\x61\x16\xb3\xb8\x82\x76\x1f\x39"
+			  "\x35\x6f\x26\x8d\x28\x0f\xac\x45"
+			  "\x02\x5d",
+		.clen	= 130,
 	},
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
