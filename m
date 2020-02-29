Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62061174739
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 15:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q/8tFgKi5B6B85GbS/sf1/lrwAEIrCt3v2V8gWHXt8M=; b=fUw
	8neK/Q8/NXvpBgI2vUIMDhZJ0wmySe+WL5f18jFl0LQPKkr5CbCXArklEgSQuAUP9WKj9dG4k1z8h
	inuIqeLrBHpg+P18IAGEhcwAWlXAjJlcDf+NvapzeoBaVwMLR+qMGhaN6TV5zb7cKrfPE3tuQokP6
	J5psS57JpaGq3vIKVuanbvpmllvatgvUeKx8u4yoZ1mbcvmkiLCPqcMA1jo/s/zhaC692VrwzFYBP
	j7rVUKKJx/qNRerYBim+w7jpuAHnsG0lJWds2kbzR9ZLfEGtec9mQkdIXJbnQjAR+mRfjFARWBo2g
	zaS4C8L1TejraryFv8AbSee6MygvCXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j82ox-0000Yu-4v; Sat, 29 Feb 2020 14:10:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j82of-0008Op-RJ; Sat, 29 Feb 2020 14:10:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id q8so6542384ljj.11;
 Sat, 29 Feb 2020 06:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Q1D9zlcvNyYo46fhZp8SkasZqL/qaSdiAry5tMG2fAw=;
 b=NomLyUZQLLmi+T6Pk4g7aRbCnrybttmZOL2ID0dn6OeLEPUjqdidyiSlY5KQkEczm6
 9XGZ6VS1iMlkwXSdfo+WLR4SIiL4XpvBffncXi9P5B3I3qc5vnmRpmBotLDGsQ/TuUsg
 VDfalj69WXCPI1QuoqXAzBtIWNg/5RJWGdJvmh8EMuTqVpg6w0s2U7EtO3p6NM0QGi+A
 G7a3nyPKKqYuhgoiymMf0rdb4aVU5PlXWSdt2StPCrJ3zRVpKqQI0xd3gVUkMBtv8bOY
 M2KnIkgJVHPNho/FsPLlQuxFlNZKgj2xz4NC+9JFoGqbY/+auFvb/aWqZAQ9KDFKGhQ/
 fgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Q1D9zlcvNyYo46fhZp8SkasZqL/qaSdiAry5tMG2fAw=;
 b=guOcsB16HfC3BGSw6vlGHIUGpQetuDEI/HcNnGOdo6zO0u0z3XLDvoFPA7i1n+6qCy
 ox1b0CNRbLzBy5W/5KoNfBPGwxXxVnUiwzUwb0sghJ2vyiXlt/FaMFkfik73OGa7osyU
 14tP5Oggu7ZknWozQLpphCbyWiAp+WN5JGtfD6VtLLwoK81LXuzqDWXhPUQpGH2hTrpO
 7foIRMs/T9TZgtcysJbOxI6IPHXSQAvCtaUzxp+LZX907SmOllQLvVow3A61aeM4KhY0
 +S+D7lCM1jMc29gKYaif3a8SMMJQziUpPxsBBDWPqAJrIiLr0yQIHC3oxEnxQ3zDoMsa
 /Zhg==
X-Gm-Message-State: ANhLgQ2cnr53wx/dp1NkQvWZwYKuE5nU8C8HdAr3/OQ1JQHXXXPX3dHB
 bteJOetqOEjvtVMJP+wV8Cs=
X-Google-Smtp-Source: ADFU+vt8sOTpYv6VA6Nc47IHgZZX7w5n6LB0r6W1CMkeuA37qXQZc8NAkGzxKVZ2YFkIgTxvpt9x2g==
X-Received: by 2002:a05:651c:545:: with SMTP id
 q5mr6126951ljp.139.1582985404026; 
 Sat, 29 Feb 2020 06:10:04 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id j11sm7104124lfb.58.2020.02.29.06.10.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 06:10:03 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: add dts/bindings for Beelink GT-King
Date: Sat, 29 Feb 2020 18:09:11 +0400
Message-Id: <1582985353-83371-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_061005_935165_7B4D9890 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new bindings and a device-tree file for the Beelink
GT-King set-top box.

Christian Hewitt (2):
  dt-bindings: arm: amlogic: add support for the Beelink GT-King
  arm64: dts: meson-g12b-gtking: add initial device-tree

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts  | 557 +++++++++++++++++++++
 3 files changed, 559 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
