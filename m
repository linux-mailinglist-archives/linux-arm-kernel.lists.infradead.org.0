Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC91B503C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1rTLeDViXvCd4tT816d7jaUFt2IrBkWrcDrot2UMwk=; b=WcO/omyRgcxwAM
	fjgKq/l/k7XYHbjnKGoTNEOfIIHKPJhTxKdL9vD/kJzEDU2pJX+WIwaxkTAfA+wCp3T0tfL4S7ecJ
	EYvb2n3NTfk65FL15Hfn/O2l0DANdodslesGykiiA4cPOX4YuNJv/kBpUy9aevXgxETUNczFtIHC/
	pfW6MLzmLlgSzmI1kiR8iCNoi+mw9nO1VYfyXzVcN5TqLkYXR1OsnuGA3J54WSKBOv7vfPxRvxrdc
	M/tghrAybFUrtHu/TADX2WYR8PaACc7EnYTe/9yGEAOLCJzkD3dh8UWO+A8kUza/yvCY2iug5MNNJ
	PVoeIx5eYC8238KlZ8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJZP-0007Y3-4m; Mon, 24 Jun 2019 07:39:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYd-0007Cm-N6
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id 207so11741537wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qk5haYv1+A59FcEkEBkZM43lIkd8QPZ0KTOnGr5KAdY=;
 b=vuvWawKOKrLHbP7A6PkmMFQLHSSl3WCqN3q5XyqVY69xQqwrByzqE/v89OEB/r2XlO
 mVVVf9ihXihb5KFRm5vDLOrwB/WL/QR+iBPLqN6IX9Ytq34pOo/SA8lrImXUaN4d8KVJ
 MUVmtBbGCAHj4S31932kY3Egv7VPhjCiuMboP2mAl8HHTJC98NrDMQv+tIX/oWBCms0x
 XkHkFy3oFrOppCYeSjO6NhCy4oO1wg+HYXI6eXeMr6jAmZqHgJ7F3NkigmsBHJQoLqu0
 wKkRCSLE/8pPHtnxBOYa6fNW/OtvWFhEHfABl+zn57tODQapmaqrutyEHwK0mdRkN66i
 /Fkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qk5haYv1+A59FcEkEBkZM43lIkd8QPZ0KTOnGr5KAdY=;
 b=MHRIgyLh5ylbE5ztN2aVKqw7oOvSMiZ4F4vVJIPxTbKTPiBvnnCprS9YeoAD9rrdXx
 ue20jJHAwxpnN3twqjx9+7hOCQoWch251qWnI5g7EjjaR70MtgGSu3L/VN/ivhnJwLo3
 lgjWpiJXdzUX1K0tsdAsetu5cZgM1Ir0akJidQrG1ESqIDY+kI4ME9Cc7sVlLYcyV7MJ
 M3IpfbPGI4eyEppZ8IfEWq8EHfhkPGvJ4BE0NTKds4LsKRrng7o2MJ0ctw96kwdvz3D5
 jwp/V112Bmdam2d0PtbOJ8mQAGqJYnJrO86AtGhsIHoawvuW/1TTuNSpUCYigkhtiOo3
 nbiQ==
X-Gm-Message-State: APjAAAW9z5kL5GOjUFH103Nfqz5RDqAB3RHJECcheArJkVizjkUq5Gym
 23Sa6ILDJ+jS08gunu27IxExtQ==
X-Google-Smtp-Source: APXvYqz9u3EsP2geCu/tEbvFGgysFsWtzxoqtJlB2Awyrfgqn7pNRWwx1B+WA6QtCqIJEJcqCntpJw==
X-Received: by 2002:a7b:c301:: with SMTP id k1mr13966481wmj.43.1561361910079; 
 Mon, 24 Jun 2019 00:38:30 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:29 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 1/6] crypto: aegis128 - use unaliged helper in unaligned
 decrypt path
Date: Mon, 24 Jun 2019 09:38:13 +0200
Message-Id: <20190624073818.29296-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003832_092359_78E4883D 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use crypto_aegis128_update_u() not crypto_aegis128_update_a() in the
decrypt path that is taken when the source or destination pointers
are not aligned.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/aegis128.c b/crypto/aegis128.c
index d78f77fc5dd1..125e11246990 100644
--- a/crypto/aegis128.c
+++ b/crypto/aegis128.c
@@ -208,7 +208,7 @@ static void crypto_aegis128_decrypt_chunk(struct aegis_state *state, u8 *dst,
 			crypto_aegis_block_xor(&tmp, &state->blocks[1]);
 			crypto_xor(tmp.bytes, src, AEGIS_BLOCK_SIZE);
 
-			crypto_aegis128_update_a(state, &tmp);
+			crypto_aegis128_update_u(state, &tmp);
 
 			memcpy(dst, tmp.bytes, AEGIS_BLOCK_SIZE);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
