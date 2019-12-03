Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240181105C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 21:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XcfsztumDMHexL79PPf/nlXAw5lQpB3CX3nibJLcHCE=; b=oLD
	7hTl5UQJk5ST9oBJ8BUKblDPyUea23aHKcWtZvMKl+1xjjWv/DANHwnxGNmaa0TRxFF7m/HkdCAJT
	eQp9qoEaNlimSLhQZaDceStt+FegK97FzhiopVQbgfeEwBad3XIwL3F2ZIzT9Gs9vflHm6//Q4jio
	3fpyBSskHwsZ9bIUs56Zcd7hSXcZfgdB7A3cGOhTEhpyM3w1fNeQNRZhJh6vAPlgY7FOcjqgo0ZG6
	IxAMJH4hKfkterwE/FFYOll+0tvfGy+XcAyh2cN64i74CzHWKc4TxDcr8AkjEddBVYtGlLKvFVeIB
	RPrMU/6RWME6LXd/WL5Z83cyfq2QHeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icEZP-00021V-Ms; Tue, 03 Dec 2019 20:14:51 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icEZE-0001sH-Jv; Tue, 03 Dec 2019 20:14:41 +0000
Received: by mail-qt1-x841.google.com with SMTP id 5so2625750qtz.1;
 Tue, 03 Dec 2019 12:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=hsFoc2grURMCqHJk3/bdURAhFk0iV5nKoNBvEUJuOoU=;
 b=r0oYPeT0dWKW6vbtNpxzFaHkL847f7O2oRZppJeekAmjqhAGscbeuhJcZS4FEXuF0d
 Eivr8nfQXnGZGBhS6iwWfhO/pmXRfRhtz5+3qyoIL5QAKvgOXNPv77T2RzROQnHfG445
 NFrmn9TWNxIJo2eVlLWS54UzF4gOULPWQYyW+DSrLBNJlx2U/wac5p1bZZya0hC8F6y2
 FmaU0ZkOh1AcMi5TYArQyeTDNTtY7RTwT40rMExw5WOsABWpeqCmjAYcrKHff8GDHFPj
 wxVezSv+Oe2IG/6luskAGi/qT2i7Rv3GbfOn3KNbh3Fs5HsGd5w4IPcQa5sIaRFaHCcQ
 7JfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hsFoc2grURMCqHJk3/bdURAhFk0iV5nKoNBvEUJuOoU=;
 b=Z/nuTUoqICxgHzeG/neyJoPJcprMv5QDwpW+ftR0u5Icwcb0cWrtmgSsl+/y9aE1ID
 Gj9vr5br/pYrXWOmQ730kErVoJIdyWdokuKNM5buuBhywQobBeZA/oMOvBE+PvDS/+Nn
 80mdWAmjoAOJh8eG0o1r2BB+Fp1aeGPszyNmgfEFE0ww0jwlb+J5mnIVrXvp7KBve1Cy
 Cpl1HPNeTG7ChKc69AMX+veuyVBkJ5bddtQrYHIfdikvo5DcyaKf6dhNggZ/1rs//mUf
 H6t52YgsxEwixQfixIHhukJVv2/Y7t/6eKrx16HoSCwuqiXJStCEpR3Uu/2f4DaVGHou
 igsg==
X-Gm-Message-State: APjAAAX86GE/n1jkb/pIJBiDwggWSkwNvSGgROqBm+7LnxHizryX/Gx2
 mkAAz0bP7dZMmV9oulcBEQ==
X-Google-Smtp-Source: APXvYqydjbtdnetb3atoETs7iRjrH/Ds6KbWS01EyGo87g8Ha5IGxW3sg0uVv6yHnIYgY43xfuVNPQ==
X-Received: by 2002:ac8:4794:: with SMTP id k20mr3159837qtq.382.1575404079285; 
 Tue, 03 Dec 2019 12:14:39 -0800 (PST)
Received: from gabell.cable.rcn.com
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id l34sm2437104qtd.71.2019.12.03.12.14.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 12:14:38 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: [PATCH v2 0/2] efi: arm64: Introduce /proc/efi/memreserve to tell the
 persistent pages
Date: Tue,  3 Dec 2019 15:14:08 -0500
Message-Id: <20191203201410.28045-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_121440_683282_486A2A28 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, d.hatayama@fujitsu.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

kexec reboot sometime fails in early boot sequence on aarch64 machine.
That is because kexec overwrites the LPI property tables and pending
tables with the initrd.

To avoid the overwrite, introduce /proc/efi/memreserve to tell the
tables region to kexec so that kexec can avoid the memory region to
locate initrd.

kexec also needs a patch to handle /proc/efi/memreserve. I'm preparing
the patch for kexec.

Changelog
    v2: - Change memreserve file location from sysfs to procfs.
          memreserve may exceed the PAGE_SIZE in case efi_memreserve_root
          has a lot of entries. So we cannot use sysfs_kf_seq_show().
          Use seq_printf() in procfs instead.

Masayoshi Mizuma (2):
  efi: add /proc/efi directory
  efi: arm64: Introduce /proc/efi/memreserve to tell the persistent
    pages

 drivers/firmware/efi/efi.c | 93 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 92 insertions(+), 1 deletion(-)

-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
