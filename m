Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDFA4C4A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 02:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=delmus9UQr2s0xbwaBfujYsEYveZ2wR8s5DuKnk1/lw=; b=psC/bo4B1R8Udt
	5SIvrDExvkDlCmbfMEfJAuo74p3uiRM6aIWM42VNt92zsNErQo56bJM6GsBvHiTdzxCdQD5seVQcm
	pFJAowcz7NMdALsJR2mdRQTxyY1mowllyXQzy5v+N7yj3ss3kuezRO/IKVu/4iAZObJ9GA5+VKm1Q
	bRj3iv3WC3tISgvcIW4+lPpx+T/wtTQTjvNWYMVBF2Xi9zN7tYbm5L73QM7BBrQq42RJeuj6Mikyr
	2ijMnT1HQZnQPiUCCahbyH90AMkVUthQlmheXWrpqDnR5Uo4HhpKYoocsu+FxafXxD3Wckkiww9Ju
	F4yRD7Rmu2j5sNBiiiyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlMA-0005vt-3P; Thu, 20 Jun 2019 00:55:14 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlLp-0005v4-0I
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 00:54:54 +0000
Received: by mail-ot1-x344.google.com with SMTP id d17so1009069oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 17:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rfkobxRjanEVPCRzEAlI3lKJ7cTgn4WDB+7+usu4syE=;
 b=Hl7fifOLF3zsppBuVoauVT7fR3CaL7bwjYcs0H2HVa5M1lg9/IKBOlDS2oYcFteuTg
 3QzPsxx1maxQIquc0c/XDCBpyZRaWHLGgrcWnEzdD/o+gwlf2Xc0dVxjNEACsUsZfVo/
 dWOeLgBflO34tNXvMCl7cGzKPEb4VH66EXodGi94r6J8GDyhtsqRcqRqK+cZfLcpFt+4
 jlr7W2H8AEB5+JdZe2z8dZ6G4KOkYB7WAapV6vrFyPvtH26H/MDvuSXGzmpu8ptzCPPu
 G8k/enGH978yQ5rDIgMzgTvoYoAi5xPdXM1DOTzdpZu2W2z0YWZsEwllfV30TQOwpRLu
 xaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rfkobxRjanEVPCRzEAlI3lKJ7cTgn4WDB+7+usu4syE=;
 b=oPtepOdaI6umWFOLeFbpLmR2oCm8HE22E5PxYLi0UKv49qcpMW02A4x1KEaINcM1lI
 O+b5GAq2TVocGhwEkdOUgSFBtH5hsqO7m1ZXAsBifBS+X7aF4Xo7pgS3Wl4xc7pqV17d
 A+8Dydj6QYV80bFJjoYLSoWhexAmSCFxB8GcoaW4OiIED1L5zAWX4EUj+MgLK3o6n37Q
 MCHPGnn8j8gNTo/suh6AHNAxj15v6wwbjgpDsWp+nrJTe0DaFpOYelrv6VdXAyF9AbgV
 DZzn21CNthPGW/wmGZQV4kK1/sQxQ2a4ttwf5uzaGHgwlbrmMLZKf/JeaANwcP+iwXuo
 h79Q==
X-Gm-Message-State: APjAAAUETezazf05rGPXCtjOkkrqU72w1QBA6E10n0TifLKEc3OVryDG
 48y9GHEbKG9Q7RrsF+gjj3P1MA==
X-Google-Smtp-Source: APXvYqxXPjVnT9XqaWX2E7u7FhdKuVhuOsWrDioXcGKD7g2ZY54jNpEtB7fZrDBdyo2i9tvOaEANFg==
X-Received: by 2002:a9d:1d22:: with SMTP id m31mr36691749otm.92.1560992089586; 
 Wed, 19 Jun 2019 17:54:49 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id c19sm7327761otl.70.2019.06.19.17.54.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 17:54:48 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org
Subject: [PATCH v2] perf cs-etm: Improve completeness for kernel address space
Date: Thu, 20 Jun 2019 08:54:28 +0800
Message-Id: <20190620005428.20883-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_175453_114344_01C5F137 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Zijlstra <peterz@infradead.org>, coresight@lists.linaro.org,
 Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXJtIGFuZCBhcm02NCBhcmNoaXRlY3R1cmUgcmVzZXJ2ZSBzb21lIG1lbW9yeSByZWdpb25zIHBy
aW9yIHRvIHRoZQpzeW1ib2wgJ19zdGV4dCcgYW5kIHRoZXNlIG1lbW9yeSByZWdpb25zIGxhdGVy
IHdpbGwgYmUgdXNlZCBieSBkZXZpY2UKbW9kdWxlIGFuZCBCUEYgaml0LiAgVGhlIGN1cnJlbnQg
Y29kZSBtaXNzZXMgdG8gY29uc2lkZXIgdGhlc2UgbWVtb3J5CnJlZ2lvbnMgdGh1cyBhbnkgYWRk
cmVzcyBpbiB0aGUgcmVnaW9ucyB3aWxsIGJlIHRha2VuIGFzIHVzZXIgc3BhY2UKbW9kZSwgYnV0
IHBlcmYgY2Fubm90IGZpbmQgdGhlIGNvcnJlc3BvbmRpbmcgZHNvIHdpdGggdGhlIHdyb25nIENQ
VQptb2RlIHNvIHdlIG1pc3NlcyB0byBnZW5lcmF0ZSBzYW1wbGVzIGZvciBkZXZpY2UgbW9kdWxl
IGFuZCBCUEYKcmVsYXRlZCB0cmFjZSBkYXRhLgoKVGhpcyBwYXRjaCBwYXJzZSB0aGUgbGluayBz
Y3JpcHRzIHRvIGdldCB0aGUgbWVtb3J5IHNpemUgcHJpb3IgdG8gc3RhcnQKYWRkcmVzcyBhbmQg
cmVkdWNlIHRoaXMgc2l6ZSBmcm9tICdldG1xLT5ldG0tPmtlcm5lbF9zdGFydCcsIHRoZW4gY2Fu
CmdldCBhIGZpeGVkIHVwIGtlcm5lbCBzdGFydCBhZGRyZXNzIHdoaWNoIGNvbnRhaW4gbWVtb3J5
IHJlZ2lvbnMgZm9yCmRldmljZSBtb2R1bGUgYW5kIEJQRi4gIEZpbmFsbHksIGNzX2V0bV9fY3B1
X21vZGUoKSBjYW4gcmV0dXJuIHJpZ2h0Cm1vZGUgZm9yIHRoZXNlIG1lbW9yeSByZWdpb25zIGFu
ZCBwZXJmIGNhbiBzdWNjZXNzZnVsbHkgZ2VuZXJhdGUKc2FtcGxlcy4KClRoZSByZWFzb24gZm9y
IHBhcnNpbmcgdGhlIGxpbmsgc2NyaXB0cyBpcyBBcm0gYXJjaGl0ZWN0dXJlIGNoYW5nZXMgdGV4
dApvZmZzZXQgZGVwZW5kZW50IG9uIGRpZmZlcmVudCBwbGF0Zm9ybXMsIHdoaWNoIGRlZmluZSBt
dWx0aXBsZSB0ZXh0Cm9mZnNldHMgaW4gJGtlcm5lbC9hcmNoL2FybS9NYWtlZmlsZS4gIFRoaXMg
b2Zmc2V0IGlzIGRlY2lkZWQgd2hlbiBidWlsZAprZXJuZWwgYW5kIHRoZSBmaW5hbCB2YWx1ZSBp
cyBleHRlbmRlZCBpbiB0aGUgbGluayBzY3JpcHQsIHNvIHdlIGNhbgpleHRyYWN0IHRoZSB1c2Vk
IHZhbHVlIGZyb20gdGhlIGxpbmsgc2NyaXB0LiAgV2UgdXNlIHRoZSBzYW1lIHdheSB0bwpwYXJz
ZSBhcm02NCBsaW5rIHNjcmlwdCBhcyB3ZWxsLiAgSWYgZmFpbCB0byBmaW5kIHRoZSBsaW5rIHNj
cmlwdCwgdGhlCnByZSBzdGFydCBtZW1vcnkgc2l6ZSBpcyBhc3N1bWVkIGFzIHplcm8sIGluIHRo
aXMgY2FzZSBpdCBoYXMgbm8gYW55CmNoYW5nZSBjYXVzZWQgd2l0aCB0aGlzIHBhdGNoLgoKQmVs
b3cgaXMgZGV0YWlsZWQgaW5mbyBmb3IgdGVzdGluZyB0aGlzIHBhdGNoOgoKLSBCdWlsZCBMTFZN
L0NsYW5nIDguMCBvciBsYXRlciB2ZXJzaW9uOwoKLSBDb25maWd1cmUgcGVyZiB3aXRoIH4vLnBl
cmZjb25maWc6CgogIHJvb3RAZGViaWFuOn4jIGNhdCB+Ly5wZXJmY29uZmlnCiAgIyB0aGlzIGZp
bGUgaXMgYXV0by1nZW5lcmF0ZWQuCiAgW2xsdm1dCiAgICAgICAgICBjbGFuZy1wYXRoID0gL21u
dC9idWlsZC9sbHZtLWJ1aWxkL2J1aWxkL2luc3RhbGwvYmluL2NsYW5nCiAgICAgICAgICBrYnVp
bGQtZGlyID0gL21udC9saW51eC1rZXJuZWwvbGludXgtY3MtZGV2LwogICAgICAgICAgY2xhbmct
b3B0ID0gIi1nIgogICAgICAgICAgZHVtcC1vYmogPSB0cnVlCgogIFt0cmFjZV0KICAgICAgICAg
IHNob3dfemVyb3MgPSB5ZXMKICAgICAgICAgIHNob3dfZHVyYXRpb24gPSBubwogICAgICAgICAg
bm9faW5oZXJpdCA9IHllcwogICAgICAgICAgc2hvd190aW1lc3RhbXAgPSBubwogICAgICAgICAg
c2hvd19hcmdfbmFtZXMgPSBubwogICAgICAgICAgYXJnc19hbGlnbm1lbnQgPSA0MAogICAgICAg
ICAgc2hvd19wcmVmaXggPSB5ZXMKCi0gUnVuICdwZXJmIHRyYWNlJyBjb21tYW5kIHdpdGggZUJQ
RiBldmVudDoKCiAgcm9vdEBkZWJpYW46fiMgcGVyZiB0cmFjZSAtZSBzdHJpbmcgXAogICAgICAt
ZSAka2VybmVsL3Rvb2xzL3BlcmYvZXhhbXBsZXMvYnBmL2F1Z21lbnRlZF9yYXdfc3lzY2FsbHMu
YwoKLSBSZWFkIGVCUEYgcHJvZ3JhbSBtZW1vcnkgbWFwcGluZyBpbiBrZXJuZWw6CgogIHJvb3RA
ZGViaWFuOn4jIGVjaG8gMSA+IC9wcm9jL3N5cy9uZXQvY29yZS9icGZfaml0X2thbGxzeW1zCiAg
cm9vdEBkZWJpYW46fiMgY2F0IC9wcm9jL2thbGxzeW1zIHwgZ3JlcCAtRSAiYnBmX3Byb2dfLitf
c3lzX1tlbnRlcnxleGl0XSIKICBmZmZmMDAwMDAwMDg2YTg0IHQgYnBmX3Byb2dfZjE3MzEzM2Rj
MzhjY2Y4N19zeXNfZW50ZXIgIFticGZdCiAgZmZmZjAwMDAwMDA4ODYxOCB0IGJwZl9wcm9nX2Mx
YmQ4NWMwOTJkNmU0YWFfc3lzX2V4aXQgICBbYnBmXQoKLSBMYXVuY2ggYW55IHByb2dyYW0gd2hp
Y2ggYWNjZXNzZXMgZmlsZSBzeXN0ZW0gZnJlcXVlbnRseSBzbyBjYW4gaGl0CiAgdGhlIHN5c3Rl
bSBjYWxscyB0cmFjZSBmbG93IHdpdGggZUJQRiBldmVudDsKCi0gQ2FwdHVyZSBDb3JlU2lnaHQg
dHJhY2UgZGF0YSB3aXRoIGZpbHRlcmluZyBlQlBGIHByb2dyYW06CgogIHJvb3RAZGViaWFuOn4j
IHBlcmYgcmVjb3JkIC1lIGNzX2V0bS9AMjAwNzAwMDAuZXRyLyBcCgkgIC0tZmlsdGVyICdmaWx0
ZXIgMHhmZmZmMDAwMDAwMDg2YTg0LzB4ODAwJyAtYSBzbGVlcCA1cwoKLSBBbm5vdGF0ZSBmb3Ig
c3ltYm9sICdicGZfcHJvZ19mMTczMTMzZGMzOGNjZjg3X3N5c19lbnRlcic6CgogIHJvb3RAZGVi
aWFuOn4jIHBlcmYgcmVwb3J0CiAgVGhlbiBzZWxlY3QgJ2JyYW5jaGVzJyBzYW1wbGVzIGFuZCBw
cmVzcyAnYScgdG8gYW5ub3RhdGUgc3ltYm9sCiAgJ2JwZl9wcm9nX2YxNzMxMzNkYzM4Y2NmODdf
c3lzX2VudGVyJywgcHJlc3MgJ1AnIHRvIHByaW50IHRvIHRoZQogIGJwZl9wcm9nX2YxNzMxMzNk
YzM4Y2NmODdfc3lzX2VudGVyLmFubm90YXRpb24gZmlsZToKCiAgcm9vdEBkZWJpYW46fiMgY2F0
IGJwZl9wcm9nX2YxNzMxMzNkYzM4Y2NmODdfc3lzX2VudGVyLmFubm90YXRpb24KCiAgYnBmX3By
b2dfZjE3MzEzM2RjMzhjY2Y4N19zeXNfZW50ZXIoKSBicGZfcHJvZ19mMTczMTMzZGMzOGNjZjg3
X3N5c19lbnRlcgogIEV2ZW50OiBicmFuY2hlcwoKICBQZXJjZW50ICAgICAgaW50IHN5c19lbnRl
cihzdHJ1Y3Qgc3lzY2FsbF9lbnRlcl9hcmdzICphcmdzKQogICAgICAgICAgICAgICAgIHN0cCAg
eDI5LCB4MzAsIFtzcCwgIy0xNl0hCgogICAgICAgICAgICAgICAJaW50IGtleSA9IDA7CiAgICAg
ICAgICAgICAgICAgbW92ICB4MjksIHNwCgogICAgICAgICAgICAgICAgICAgICAgIGF1Z21lbnRl
ZF9hcmdzID0gYnBmX21hcF9sb29rdXBfZWxlbSgmYXVnbWVudGVkX2ZpbGVuYW1lX21hcCwgJmtl
eSk7CiAgICAgICAgICAgICAgICAgc3RwICB4MTksIHgyMCwgW3NwLCAjLTE2XSEKCiAgICAgICAg
ICAgICAgICAgICAgICAgYXVnbWVudGVkX2FyZ3MgPSBicGZfbWFwX2xvb2t1cF9lbGVtKCZhdWdt
ZW50ZWRfZmlsZW5hbWVfbWFwLCAma2V5KTsKICAgICAgICAgICAgICAgICBzdHAgIHgyMSwgeDIy
LCBbc3AsICMtMTZdIQoKICAgICAgICAgICAgICAgICBzdHAgIHgyNSwgeDI2LCBbc3AsICMtMTZd
IQoKICAgICAgICAgICAgICAgCXJldHVybiBicGZfZ2V0X2N1cnJlbnRfcGlkX3RnaWQoKTsKICAg
ICAgICAgICAgICAgICBtb3YgIHgyNSwgc3AKCiAgICAgICAgICAgICAgIAlyZXR1cm4gYnBmX2dl
dF9jdXJyZW50X3BpZF90Z2lkKCk7CiAgICAgICAgICAgICAgICAgbW92ICB4MjYsICMweDAgICAg
ICAgICAgICAgICAgICAgCS8vICMwCgogICAgICAgICAgICAgICAgIHN1YiAgc3AsIHNwLCAjMHgx
MAoKICAgICAgICAgICAgICAgCXJldHVybiBicGZfbWFwX2xvb2t1cF9lbGVtKHBpZHMsICZwaWQp
ICE9IE5VTEw7CiAgICAgICAgICAgICAgICAgYWRkICB4MTksIHgwLCAjMHgwCgogICAgICAgICAg
ICAgICAgIG1vdiAgeDAsICMweDAgICAgICAgICAgICAgICAgICAgCS8vICMwCgogICAgICAgICAg
ICAgICAgIG1vdiAgeDEwLCAjMHhmZmZmZmZmZmZmZmZmZmY4ICAgIAkvLyAjLTgKCiAgICAgICAg
ICAgICAgIAlpZiAocGlkX2ZpbHRlcl9faGFzKCZwaWRzX2ZpbHRlcmVkLCBnZXRwaWQoKSkpCiAg
ICAgICAgICAgICAgICAgc3RyICB3MCwgW3gyNSwgeDEwXQoKICAgICAgICAgICAgICAgCXByb2Jl
X3JlYWQoJmF1Z21lbnRlZF9hcmdzLT5hcmdzLCBzaXplb2YoYXVnbWVudGVkX2FyZ3MtPmFyZ3Mp
LCBhcmdzKTsKICAgICAgICAgICAgICAgICBhZGQgIHgxLCB4MjUsICMweDAKCiAgICAgICAgICAg
ICAgIAlwcm9iZV9yZWFkKCZhdWdtZW50ZWRfYXJncy0+YXJncywgc2l6ZW9mKGF1Z21lbnRlZF9h
cmdzLT5hcmdzKSwgYXJncyk7CiAgICAgICAgICAgICAgICAgbW92ICB4MTAsICMweGZmZmZmZmZm
ZmZmZmZmZjggICAgCS8vICMtOAoKICAgICAgICAgICAgICAgCXN5c2NhbGwgPSBicGZfbWFwX2xv
b2t1cF9lbGVtKCZzeXNjYWxscywgJmF1Z21lbnRlZF9hcmdzLT5hcmdzLnN5c2NhbGxfbnIpOwog
ICAgICAgICAgICAgICAgIGFkZCAgeDEsIHgxLCB4MTAKCiAgICAgICAgICAgICAgIAlzeXNjYWxs
ID0gYnBmX21hcF9sb29rdXBfZWxlbSgmc3lzY2FsbHMsICZhdWdtZW50ZWRfYXJncy0+YXJncy5z
eXNjYWxsX25yKTsKICAgICAgICAgICAgICAgICBtb3YgIHgwLCAjMHhmZmZmODAwOWZmZmZmZmZm
ICAgIAkvLyAjLTE0MDY5NDUzODY4MjM2OQoKICAgICAgICAgICAgICAgICBtb3ZrIHgwLCAjMHg2
Njk4LCBsc2wgIzE2CgogICAgICAgICAgICAgICAgIG1vdmsgeDAsICMweDNlMDAKCiAgICAgICAg
ICAgICAgICAgbW92ICB4MTAsICMweGZmZmZmZmZmZmZmZjEwNDAgICAgCS8vICMtNjEzNzYKCiAg
ICAgICAgICAgICAgIAlpZiAoc3lzY2FsbCA9PSBOVUxMIHx8ICFzeXNjYWxsLT5lbmFibGVkKQog
ICAgICAgICAgICAgICAgIG1vdmsgeDEwLCAjMHgxMDIzLCBsc2wgIzE2CgogICAgICAgICAgICAg
ICAJaWYgKHN5c2NhbGwgPT0gTlVMTCB8fCAhc3lzY2FsbC0+ZW5hYmxlZCkKICAgICAgICAgICAg
ICAgICBtb3ZrIHgxMCwgIzB4MCwgbHNsICMzMgoKICAgICAgICAgICAgICAgCWxvb3BfaXRlcl9m
aXJzdCgpCiAgICAzLjY5ICAgICAgIOKGkiBibHIgIGJwZl9wcm9nX2YxNzMxMzNkYzM4Y2NmODdf
c3lzX2VudGVyCiAgICAgICAgICAgICAgIAlsb29wX2l0ZXJfZmlyc3QoKQogICAgICAgICAgICAg
ICAgIGFkZCAgeDcsIHgwLCAjMHgwCgogICAgICAgICAgICAgICAJbG9vcF9pdGVyX2ZpcnN0KCkK
ICAgICAgICAgICAgICAgICBhZGQgIHgyMCwgeDcsICMweDAKCiAgICAgICAgICAgICAgIAlpbnQg
c2l6ZSA9IHByb2JlX3JlYWRfc3RyKCZhdWdtZW50ZWRfZmlsZW5hbWUtPnZhbHVlLCBmaWxlbmFt
ZV9sZW4sIGZpbGVuYW1lX2FyZyk7CiAgICAgICAgICAgICAgICAgbW92ICB4MCwgIzB4MSAgICAg
ICAgICAgICAgICAgICAJLy8gIzEKCiAgWy4uLl0KCkNjOiBNYXRoaWV1IFBvaXJpZXIgPG1hdGhp
ZXUucG9pcmllckBsaW5hcm8ub3JnPgpDYzogQWxleGFuZGVyIFNoaXNoa2luIDxhbGV4YW5kZXIu
c2hpc2hraW5AbGludXguaW50ZWwuY29tPgpDYzogSmlyaSBPbHNhIDxqb2xzYUByZWRoYXQuY29t
PgpDYzogTmFtaHl1bmcgS2ltIDxuYW1oeXVuZ0BrZXJuZWwub3JnPgpDYzogUGV0ZXIgWmlqbHN0
cmEgPHBldGVyekBpbmZyYWRlYWQub3JnPgpDYzogU3V6dWtpIFBvdWxvdXNlIDxzdXp1a2kucG91
bG9zZUBhcm0uY29tPgpDYzogY29yZXNpZ2h0QGxpc3RzLmxpbmFyby5vcmcKQ2M6IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpTaWduZWQtb2ZmLWJ5OiBMZW8gWWFuIDxsZW8u
eWFuQGxpbmFyby5vcmc+Ci0tLQogdG9vbHMvcGVyZi9NYWtlZmlsZS5jb25maWcgfCAyMCArKysr
KysrKysrKysrKysrKysrKwogdG9vbHMvcGVyZi91dGlsL2NzLWV0bS5jICAgfCAxOSArKysrKysr
KysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS90b29scy9wZXJmL01ha2VmaWxlLmNvbmZpZyBiL3Rvb2xzL3Bl
cmYvTWFrZWZpbGUuY29uZmlnCmluZGV4IDUxZGQwMGY2NTcwOS4uY2Y1OTA2ZDY2N2FhIDEwMDY0
NAotLS0gYS90b29scy9wZXJmL01ha2VmaWxlLmNvbmZpZworKysgYi90b29scy9wZXJmL01ha2Vm
aWxlLmNvbmZpZwpAQCAtNDE4LDYgKzQxOCwyNiBAQCBpZmRlZiBDT1JFU0lHSFQKICAgICBlbmRp
ZgogICAgIExERkxBR1MgKz0gJChMSUJPUEVOQ1NEX0xERkxBR1MpCiAgICAgRVhUTElCUyArPSAk
KE9QRU5DU0RMSUJTKQorICAgIEFSTV9QUkVfU1RBUlRfU0laRSA6PSAwCisgICAgaWZlcSAoJChT
UkNBUkNIKSxhcm02NCkKKyAgICAgICMgRXh0cmFjdCBpbmZvIGZyb20gbGRzOgorICAgICAgIyAg
LiA9ICgoKCgoKCgoMHhmZmZmZmZmZmZmZmZmZmZmKSkgLSAoKCgxKSkgPDwgKDQ4KSkgKyAxKSAr
ICgwKSkgKyAoMHgwODAwMDAwMCkpKSArICgweDA4MDAwMDAwKSkpICsgMHgwMDA4MDAwMDsKKyAg
ICAgICMgQVJNX1BSRV9TVEFSVF9TSVpFIDo9ICgweDA4MDAwMDAwICsgMHgwODAwMDAwMCArIDB4
MDAwODAwMDApCisgICAgICBBUk1fUFJFX1NUQVJUX1NJWkUgOj0gJChzaGVsbCBlZ3JlcCAnIFwu
IFw9IFwoezh9MHhbMC05YS1mQS1GXStcKXsyfScgXAorICAgICAgICAkKHNyY3RyZWUpL2FyY2gv
YXJtNjQva2VybmVsL3ZtbGludXgubGRzIHwgXAorICAgICAgICBzZWQgLWUgJ3MvWyh8KXwufD18
K3w8fDt8LV0vL2cnIC1lICdzLyBcKy8gL2cnIC1lICdzL15bIFx0XSovLycgfCBcCisgICAgICAg
IGF3ayAtRicgJyAne3ByaW50ICIoIiQkNiAiKyIgICQkNyAiKyIgJCQ4IikifScgMj4vZGV2L251
bGwpCisgICAgZW5kaWYKKyAgICBpZmVxICgkKFNSQ0FSQ0gpLGFybSkKKyAgICAgICMgRXh0cmFj
dCBpbmZvIGZyb20gbGRzOgorICAgICAgIyAgIC4gPSAoKDB4QzAwMDAwMDApKSArIDB4MDAyMDgw
MDA7CisgICAgICAjIEFSTV9QUkVfU1RBUlRfU0laRSA6PSAweDAwMjA4MDAwCisgICAgICBBUk1f
UFJFX1NUQVJUX1NJWkUgOj0gJChzaGVsbCBlZ3JlcCAnIFwuIFw9IFwoezJ9MHhbMC05YS1mQS1G
XStcKXsyfScgXAorICAgICAgICAkKHNyY3RyZWUpL2FyY2gvYXJtL2tlcm5lbC92bWxpbnV4Lmxk
cyB8IFwKKyAgICAgICAgc2VkIC1lICdzL1sofCl8Lnw9fCt8PHw7fC1dLy9nJyAtZSAncy8gXCsv
IC9nJyAtZSAncy9eWyBcdF0qLy8nIHwgXAorICAgICAgICBhd2sgLUYnICcgJ3twcmludCAiKCIk
JDIiKSJ9JyAyPi9kZXYvbnVsbCkKKyAgICBlbmRpZgorICAgIENGTEFHUyArPSAtREFSTV9QUkVf
U1RBUlRfU0laRT0iJChBUk1fUFJFX1NUQVJUX1NJWkUpIgogICAgICQoY2FsbCBkZXRlY3RlZCxD
T05GSUdfTElCT1BFTkNTRCkKICAgICBpZmRlZiBDU1RSQUNFX1JBVwogICAgICAgQ0ZMQUdTICs9
IC1EQ1NfREVCVUdfUkFXCmRpZmYgLS1naXQgYS90b29scy9wZXJmL3V0aWwvY3MtZXRtLmMgYi90
b29scy9wZXJmL3V0aWwvY3MtZXRtLmMKaW5kZXggMGM3Nzc2YjUxMDQ1Li41ZmEwYmUzYTM5MDQg
MTAwNjQ0Ci0tLSBhL3Rvb2xzL3BlcmYvdXRpbC9jcy1ldG0uYworKysgYi90b29scy9wZXJmL3V0
aWwvY3MtZXRtLmMKQEAgLTYxMywxMCArNjEzLDI3IEBAIHN0YXRpYyB2b2lkIGNzX2V0bV9fZnJl
ZShzdHJ1Y3QgcGVyZl9zZXNzaW9uICpzZXNzaW9uKQogc3RhdGljIHU4IGNzX2V0bV9fY3B1X21v
ZGUoc3RydWN0IGNzX2V0bV9xdWV1ZSAqZXRtcSwgdTY0IGFkZHJlc3MpCiB7CiAJc3RydWN0IG1h
Y2hpbmUgKm1hY2hpbmU7CisJdTY0IGZpeHVwX2tlcm5lbF9zdGFydCA9IDA7CiAKIAltYWNoaW5l
ID0gZXRtcS0+ZXRtLT5tYWNoaW5lOwogCi0JaWYgKGFkZHJlc3MgPj0gZXRtcS0+ZXRtLT5rZXJu
ZWxfc3RhcnQpIHsKKwkvKgorCSAqIFNpbmNlIGFybSBhbmQgYXJtNjQgc3BlY2lmeSBzb21lIG1l
bW9yeSByZWdpb25zIHByaW9yIHRvCisJICogJ2tlcm5lbF9zdGFydCcsIGtlcm5lbCBhZGRyZXNz
ZXMgY2FuIGJlIGxlc3MgdGhhbiAna2VybmVsX3N0YXJ0Jy4KKwkgKgorCSAqIEZvciBhcm0gYXJj
aGl0ZWN0dXJlLCB0aGUgMTZNQiB2aXJ0dWFsIG1lbW9yeSBzcGFjZSBwcmlvciB0bworCSAqICdr
ZXJuZWxfc3RhcnQnIGlzIGFsbG9jYXRlZCB0byBkZXZpY2UgbW9kdWxlcywgYSBQTUQgdGFibGUg
aWYKKwkgKiBDT05GSUdfSElHSE1FTSBpcyBlbmFibGVkIGFuZCBhIFBHRCB0YWJsZS4KKwkgKgor
CSAqIEZvciBhcm02NCBhcmNoaXRlY3R1cmUsIHRoZSByb290IFBHRCB0YWJsZSwgZGV2aWNlIG1v
ZHVsZSBtZW1vcnkKKwkgKiByZWdpb24gYW5kIEJQRiBqaXQgcmVnaW9uIGFyZSBwcmlvciB0byAn
a2VybmVsX3N0YXJ0Jy4KKwkgKgorCSAqIFRvIHJlZmxlY3QgdGhlIGNvbXBsZXRlIGtlcm5lbCBh
ZGRyZXNzIHNwYWNlLCBjb21wZW5zYXRlIHRoZXNlCisJICogcHJlLWRlZmluZWQgcmVnaW9ucyBm
b3Iga2VybmVsIHN0YXJ0IGFkZHJlc3MuCisJICovCisJZml4dXBfa2VybmVsX3N0YXJ0ID0gZXRt
cS0+ZXRtLT5rZXJuZWxfc3RhcnQgLSBBUk1fUFJFX1NUQVJUX1NJWkU7CisKKwlpZiAoYWRkcmVz
cyA+PSBmaXh1cF9rZXJuZWxfc3RhcnQpIHsKIAkJaWYgKG1hY2hpbmVfX2lzX2hvc3QobWFjaGlu
ZSkpCiAJCQlyZXR1cm4gUEVSRl9SRUNPUkRfTUlTQ19LRVJORUw7CiAJCWVsc2UKLS0gCjIuMTcu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
