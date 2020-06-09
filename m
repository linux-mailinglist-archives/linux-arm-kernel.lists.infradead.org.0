Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8461F39C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJJwFlqmFxZ6FISdR46IxORG8nJPyegnHVbNNo5eKhw=; b=mPgMorxx2w3SK2
	tZBO3R7TRkHjddFwxlndYGnqDEoEvAKM+PbeGf0zns1GototgAwp3LichGpUMWq4in4d1f96kQecl
	RlprHfDEqNa6VxZorwzDU1Bi7bPiNK283o+PhzB4IPiGbQRfwthGtjBawoC4v7nijgVlYEenpwq0X
	vGvVGP4gHv1r3vNUjAdGldqes4f/hGZ2VIWqTWlhyoA+2wrvi3fyDc9oTz+1NDUP0eBBVPGzn7GKQ
	rjbHVmlXZJkFFivCFJ25H/8rvySGMX4U7UWEQYttg4c6K8gsUaB4VcB7d6BcPBuwPK98nFawJ3AB0
	L82Nrx28KrY6i/Z+CY6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicTU-0002iU-Bv; Tue, 09 Jun 2020 11:31:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicT0-0002VJ-Mt
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:30:55 +0000
Received: by mail-wm1-x342.google.com with SMTP id q25so2778184wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yy4JjAM/LNQUkdhG6q2NqktsnyMuS7R2bxPf6ltadH8=;
 b=azF6VfnhsJHJT1e35i7AmkkR1X2cDfTKd6MHcFYqf/qUjeev+9u82kcN9eawn8jiiF
 q/Is5S6qXNBren7aTwal86Gf7L1zXFP28946on9rlvWl3ogAqmdhGxa8bHGMxhNvSXxl
 jX1oDNxlVK4oKte7FVO7RGbrXSpDfrWdyyCS4C3UU9FHOd7NhOez8HMHVfIVvsai2wR3
 jC9A2DY8DxTGoPqxO2HcJSnZmYcPWu4C7/JoVXl1lHUM0/+y0nbDiDucKZtB1IDTjw2b
 ZkWRYx8nM79zA7me3G2dhgE2WRoJYzkcc9Wm10gVr45e6eLwC1p2MYDWiindGsq8NByu
 a5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yy4JjAM/LNQUkdhG6q2NqktsnyMuS7R2bxPf6ltadH8=;
 b=BlGtOIwRqQQm4RFRHDe/qvdh5/xMlSGfVq9rYE3RY5arEPSRIt2kMMBQcvFilxioZf
 2B55ud75DtNZwvDd09yyf+LFSNamRirx4Pza//MZP12+aOaYS/otVHHH4kiayj1EyKRT
 ASZtXv3ebzUMOP+NwPV0xK0oA3MHQic+TvjfyTSsn/6xV3BGBUvh7qajma6IVx4GHA4D
 kX/ckGo1y3foTIRebOXlWR4s2/e+KeBLvtyei+MskcttHc1XjyEs7RMlDiLMMR5fx2bd
 Oj3sQKuguIuJg8z1GcxHtVRod0FZgRK0J0YTBSjzn9AuOwfqa5CFOyaKW7RbaBmug1y5
 s2iA==
X-Gm-Message-State: AOAM5310qk+QbPY57dmGy8jVgJ5sDAOze9XSUiroJTECTyPATympwH9C
 D/d1JbLY/OjJickXYTgBNR4=
X-Google-Smtp-Source: ABdhPJwgOwYWVxCRIFZyDVpp/3Ltf1xyv6s08mDUomBXORtNf6+789YJJr+23ZBxBu5gy5UoNBXKXA==
X-Received: by 2002:a1c:a5ce:: with SMTP id o197mr3640140wme.85.1591702253380; 
 Tue, 09 Jun 2020 04:30:53 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id l17sm2609877wmi.16.2020.06.09.04.30.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 04:30:52 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: bcm63xx: add 6318 gated clock bindings
Date: Tue,  9 Jun 2020 13:30:48 +0200
Message-Id: <20200609113049.4035426-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609113049.4035426-1-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_043054_740752_D15E992B 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIEJDTTYzMTggdG8gdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIGdhdGVkIGNs
b2NrIGNvbnRyb2xsZXJzIGZvdW5kCm9uIEJDTTYzeHggU29Dcy4KClNpZ25lZC1vZmYtYnk6IMOB
bHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2JyY20sYmNtNjN4eC1jbG9ja3MudHh0IHwg
MiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9icmNtLGJjbTYzeHgtY2xvY2tzLnR4
dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9icmNtLGJjbTYzeHgt
Y2xvY2tzLnR4dAppbmRleCAzMDQxNjU3ZTJmOTYuLjNlN2NhNTUzMDc3NSAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2JyY20sYmNtNjN4eC1jbG9j
a3MudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9icmNt
LGJjbTYzeHgtY2xvY2tzLnR4dApAQCAtMyw2ICszLDggQEAgR2F0ZWQgQ2xvY2sgQ29udHJvbGxl
ciBCaW5kaW5ncyBmb3IgTUlQUyBiYXNlZCBCQ002M1hYIFNvQ3MKIFJlcXVpcmVkIHByb3BlcnRp
ZXM6CiAtIGNvbXBhdGlibGU6IG11c3QgYmUgb25lIG9mOgogCSAiYnJjbSxiY20zMzY4LWNsb2Nr
cyIKKwkgImJyY20sYmNtNjMxOC1jbG9ja3MiCisJICJicmNtLGJjbTYzMTgtdWJ1cy1jbG9ja3Mi
CiAJICJicmNtLGJjbTYzMjgtY2xvY2tzIgogCSAiYnJjbSxiY202MzU4LWNsb2NrcyIKIAkgImJy
Y20sYmNtNjM2Mi1jbG9ja3MiCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
