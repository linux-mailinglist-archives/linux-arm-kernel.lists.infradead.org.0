Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA59B19ED09
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIaqvlOQJ59kyMQbpwMqBd7VUs5ltydJ/Ea5XyUG/Co=; b=TYu92IlbmSqYlf
	BhpEB0RQU+OLbaJombForOLMmMUSuOIM58qgzdAUzdmeUHOLLrh6u6AbZOJjs0Web2ftHadQRS7dC
	2188VrhIWSeMXyl+0CLI9f7UQEIEfiiSWET5+IzUIYuvAyXNVj6kPrPtCJpV7A7O3FP5g9bmiNUes
	4WglB7yHlHasOL7Roprj2yw2/SdKn+P1Hg7A3X/lEyjChcE+wHO2CJK4uljflLc4nmfr39UUidy3U
	3QPGXedWjLrxpuKQPOhzZF8/fTt7JLOtDmeAhmivdnD9X8X6IWqO7xC8VdX5YTdUjd2T/iolNcVeT
	A+vpoeSJ9aq9BfWolp1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9DW-0003Jl-Jg; Sun, 05 Apr 2020 17:37:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Bt-0001Zs-5q
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id o17so356446wrv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6DTFnfqknLyGp+3XkRw9j6lN2nC/vQBz5akOO6Jq+9E=;
 b=SW2mYPAVdRTHZs56xizZJof0PB0/H10dF7kN5MZRV0Mwbe/pirMi+hzGe0zy2l+aTi
 gt7nAAaROKaNwZgN1V1K1oIxQ0Tx3fhFTEtB2UZ5z2dIl2rGDNsIb9bpPi8BAhUC1+Io
 KZTlb7c4rfAotfPPW8wEPlTJDpfwEVTHKj92ibNwwqfcLyIAfQw876UWFShUZUplpMdO
 /9pXyLfaw/g3ge3ftNepvrc6hdYrJ4qax74F2HQWEJnBe1E87JRok3RMdAmTQia2I4vn
 PIVoOXlaXiPqyAIoADS2lTONpme31SQxnFF/2Rfzkxdh50PyJNyA8/Svca29QH1NotuI
 Ib0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6DTFnfqknLyGp+3XkRw9j6lN2nC/vQBz5akOO6Jq+9E=;
 b=pbU8HbIR4nBoCgGpOjWEM0l2FDosqgYls9BxaplW4GJDwaXzOguXpf6XFMX7wvDzou
 lcs8degY1kKNJuZr8sWIFvIu36PP15VWUJnKOyo2wZkAUX5GOScDISLGoP7Likqo6lwW
 kxY1HtN7PgnFlZS9la9FeXRalPPpMGXRNcBOzWNK89ZiMzhPU37s6Gnkh6dYzG1ln8gT
 3UYYyBE2oPBQxmTa9dNcCQs6yaXXK5G4g2jxpe39gDSfwL9ixeLhFz3x1Odtmci1oYvD
 EfvOTLKJ6ZePfpnTP0aCPvcAweLV9Fu6RvQeKRXbcWMjYGisG6pSPSkwq9oxcpkutmsp
 +wbw==
X-Gm-Message-State: AGi0PuaypyQY/BspliXxwCZTeLkovVWlmm6oWS67fzGnZi2oRff3DoQ5
 pcyM4CA2szrTI0vzeph6TPg=
X-Google-Smtp-Source: APiQypJWB+qPDgIK1ujMiEJT95YHqkgQ0srkjyqkRtFkq0vai3h9oU1y9+4p3mUKEgMS+0t9VDQFwA==
X-Received: by 2002:a5d:6646:: with SMTP id f6mr18957292wrw.235.1586108170606; 
 Sun, 05 Apr 2020 10:36:10 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:09 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 5/7] arm64: configs: Enable sun50i cpufreq nvmem
Date: Sun,  5 Apr 2020 19:35:59 +0200
Message-Id: <20200405173601.24331-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103613_279796_872F91C1 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IG5lZWRzIHRoaXMgZHJpdmVyIHRvIGJlIGFibGUgdG8gZ2V0CnRoZSBjb3Jy
ZWN0IHNwZWVkX2JpbiByZXF1aXJlZCBmb3IgRFZGUy4KCkVuYWJsZSB0aGlzIG9wdGlvbiBpbiBh
cm02NCBkZWZjb25maWcuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IDRkYjIy
M2RiYzU0OS4uMjhiMjVmYzAzNDdjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTgzLDYgKzgzLDcg
QEAgQ09ORklHX0NQVV9GUkVRX0dPVl9DT05TRVJWQVRJVkU9bQogQ09ORklHX0NQVV9GUkVRX0dP
Vl9TQ0hFRFVUSUw9eQogQ09ORklHX0NQVUZSRVFfRFQ9eQogQ09ORklHX0FDUElfQ1BQQ19DUFVG
UkVRPW0KK0NPTkZJR19BUk1fQUxMV0lOTkVSX1NVTjUwSV9DUFVGUkVRX05WTUVNPXkKIENPTkZJ
R19BUk1fQVJNQURBXzM3WFhfQ1BVRlJFUT15CiBDT05GSUdfQVJNX1NDUElfQ1BVRlJFUT15CiBD
T05GSUdfQVJNX0lNWF9DUFVGUkVRX0RUPW0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
