Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797157A85D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:26:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QImHOIFJgfI7hnoYFbBIDgoaCKqrqN+OuNU37H4wlIg=; b=Wuf2hGvHPe1Q5B8/d4XoRAk2aI
	t4kS9a1X6lMY81OkEkzUGGNNqwk6hAjKJ8yr2Ubdur35nssJziJRIoIN7foGKGALCWnVEs1Nm5US8
	WhB44pqYOxDHz8xIA5L+xlUFs1Rs4/IxG7cJumEjtOzLZmgZ6Y29kKrj+G5MR6F0fWYWbfPmcgD2Y
	qtqrbZB1j21iVwvLZ/n4LvdSSbLAaIWM5xe9o41cTGbpZUdUnRRJTN/aQxEDz2An7gehk3z11rhHk
	gBlCvLbuGJL3a3cpjJ2TejwzwLx1zUqB5/4RSWOACAdoyUU2XzPHlQLJT9jwLYObQvw5lbL4GWk8S
	FMmhDv9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRDJ-0003eh-NH; Tue, 30 Jul 2019 12:26:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRBk-0001lV-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:25:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so19638824pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ihVno30NiTJ4nXlPwk0p1JArXGGwnpn9XYnN+QyiMz4=;
 b=qbiyr6oe9qmKjEI/E2pv/fDSjK/fIiWbv00GPWqkaY7IeiYE3b93IixfbKgrbfOki4
 TKD9IEJlrA1TANkylWk2FpXKR6F1NYac7MjvuQH0ePRjZXsDj5u1NMDXKTKJ8apiLru+
 H1UmLUZhxay6j2lrbQeVp1PPfhxGTe4BYfbu07PKWrQJyOCerjM4U6lHiVMBOixJhlKz
 mZtYAZwHgvnITkIA3MnfqHcC0lDX2Fb3uW9K3OsNn5mt7dlLXuCpoHG9etCaZ+IWoc92
 RQtiGHprKKQqEFEkbz4b2fCaojhnl4idmkaR7k+HPZ3TMHUTAX0MuFD8tqHBqJ3HvCv+
 e4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ihVno30NiTJ4nXlPwk0p1JArXGGwnpn9XYnN+QyiMz4=;
 b=drCN891K3tnE8NK/Yi2hwPSErnNThcQ9kwsj4rNrIDgo0jouTGyTzORdZYArK/W1zx
 TCIUJPU680mH1DBkn0tQOjvZ0F3ohiT+bHAxNya7K9LJQSks9VvJXAcQRaaoOtr+/Z5z
 g3enD8eZVSMLInKRGOu/lqgBR1Z2vnxXgii7MywVwfnTfs/z6MoPSj6kDQFeeJTOe5ZR
 PlJxAq7I+ZR4WEUT14xiC86zrPjqy8T/Mrmj7306ubc4xxDpjZRzuAMY/O1Y7LrI20PR
 I6xS51tlRZH6ieKmV+V1S8e7qZBhTrOR45VnfMVNOKT0pkrucB5nKF6JRQ2jW2IstrJ/
 uadg==
X-Gm-Message-State: APjAAAUr8GO1UDncEh/LYsGi3RuP3gZcpB2f7Y1dPBX/rVntDvbXQ07e
 UAJLfNsYNFi2A0+7ZXgGBG3rPg==
X-Google-Smtp-Source: APXvYqzBpML/+RG6mX83dkrKgyogoRedECvKNQJNISkarkVtJCD+BTonb8A1Odg1bhwhsgBxg6rmqw==
X-Received: by 2002:a62:764d:: with SMTP id r74mr43312932pfc.110.1564489506754; 
 Tue, 30 Jul 2019 05:25:06 -0700 (PDT)
Received: from localhost.localdomain ([45.114.72.197])
 by smtp.gmail.com with ESMTPSA id v8sm54895462pgs.82.2019.07.30.05.24.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 30 Jul 2019 05:25:06 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: keyrings@vger.kernel.org, linux-integrity@vger.kernel.org,
 linux-security-module@vger.kernel.org
Subject: [RFC v2 5/6] doc: keys: Document usage of TEE based Trusted Keys
Date: Tue, 30 Jul 2019 17:53:39 +0530
Message-Id: <1564489420-677-6-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_052508_730283_3898A8BB 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tee-dev@lists.linaro.org, daniel.thompson@linaro.org,
 Sumit Garg <sumit.garg@linaro.org>, corbet@lwn.net, jejb@linux.ibm.com,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 jarkko.sakkinen@linux.intel.com, casey@schaufler-ca.com,
 jens.wiklander@linaro.org, linux-arm-kernel@lists.infradead.org,
 serge@hallyn.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Provide documentation for usage of TEE based Trusted Keys via existing
user-space "keyctl" utility. Also, document various use-cases.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 Documentation/security/keys/index.rst       |  1 +
 Documentation/security/keys/tee-trusted.rst | 93 +++++++++++++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 Documentation/security/keys/tee-trusted.rst

diff --git a/Documentation/security/keys/index.rst b/Documentation/security/keys/index.rst
index 647d58f..f9ef557 100644
--- a/Documentation/security/keys/index.rst
+++ b/Documentation/security/keys/index.rst
@@ -9,3 +9,4 @@ Kernel Keys
    ecryptfs
    request-key
    trusted-encrypted
+   tee-trusted
diff --git a/Documentation/security/keys/tee-trusted.rst b/Documentation/security/keys/tee-trusted.rst
new file mode 100644
index 0000000..ef03745
--- /dev/null
+++ b/Documentation/security/keys/tee-trusted.rst
@@ -0,0 +1,93 @@
+======================
+TEE based Trusted Keys
+======================
+
+TEE based Trusted Keys provides an alternative approach for providing Trusted
+Keys in case TPM chip isn't present.
+
+Trusted Keys use a TEE service/device both to generate and to seal the keys.
+Keys are sealed under a hardware unique key in the TEE, and only unsealed by
+the TEE.
+
+For more information about TEE, refer to ``Documentation/tee.txt``.
+
+Usage::
+
+    keyctl add trusted name "new keylen" ring
+    keyctl add trusted name "load hex_blob" ring
+    keyctl print keyid
+
+"keyctl print" returns an ascii hex copy of the sealed key, which is in format
+specific to TEE device implementation.  The key length for new keys are always
+in bytes. Trusted Keys can be 32 - 128 bytes (256 - 1024 bits).
+
+Examples of trusted key and its usage as 'master' key for encrypted key usage:
+
+More details about encrypted keys can be found here:
+``Documentation/security/keys/trusted-encrypted.rst``
+
+Create and save a trusted key named "kmk" of length 32 bytes::
+
+    $ keyctl add trusted kmk "new 32" @u
+    754414669
+
+    $ keyctl show
+    Session Keyring
+     827385718 --alswrv      0 65534  keyring: _uid_ses.0
+     274124851 --alswrv      0 65534   \_ keyring: _uid.0
+     754414669 --als-rv      0     0       \_ trusted: kmk
+
+    $ keyctl print 754414669
+    15676790697861b422175596ae001c2f505cea2c6f3ebbc5fb08eeb1f343a07e
+
+    $ keyctl pipe 754414669 > kmk.blob
+
+Load a trusted key from the saved blob::
+
+    $ keyctl add trusted kmk "load `cat kmk.blob`" @u
+    491638700
+
+    $ keyctl print 491638700
+    15676790697861b422175596ae001c2f505cea2c6f3ebbc5fb08eeb1f343a07e
+
+The initial consumer of trusted keys is EVM, which at boot time needs a high
+quality symmetric key for HMAC protection of file metadata.  The use of a
+TEE based trusted key provides security that the EVM key has not been
+compromised by a user level problem and tied to particular hardware.
+
+Create and save an encrypted key "evm" using the above trusted key "kmk":
+
+option 1: omitting 'format'::
+
+    $ keyctl add encrypted evm "new trusted:kmk 32" @u
+    608915065
+
+option 2: explicitly defining 'format' as 'default'::
+
+    $ keyctl add encrypted evm "new default trusted:kmk 32" @u
+    608915065
+
+    $ keyctl print 608915065
+    default trusted:kmk 32 f380ac588a925f488d5be007cf23e4c900b8b652ab62241c8
+    ed54906189b6659d139d619d4b51752a2645537b11fd44673f13154a65b3f595d5fb2131
+    2fe45529ea0407c644ea4026f2a1a75661f2c9b66
+
+    $ keyctl pipe 608915065 > evm.blob
+
+Load an encrypted key "evm" from saved blob::
+
+    $ keyctl add encrypted evm "load `cat evm.blob`" @u
+    831684262
+
+    $ keyctl print 831684262
+    default trusted:kmk 32 f380ac588a925f488d5be007cf23e4c900b8b652ab62241c8
+    ed54906189b6659d139d619d4b51752a2645537b11fd44673f13154a65b3f595d5fb2131
+    2fe45529ea0407c644ea4026f2a1a75661f2c9b66
+
+Other uses for trusted and encrypted keys, such as for disk and file encryption
+are anticipated.  In particular the 'ecryptfs' encrypted keys format can be used
+to mount an eCryptfs filesystem.  More details about the usage can be found in
+the file ``Documentation/security/keys/ecryptfs.rst``.
+
+Another format 'enc32' can be used to support encrypted keys with payload size
+of 32 bytes.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
