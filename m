Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E2254EA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ydeBY6ZTtIsQtFsKbUQqGd62przpz1hy/RbUlSIH0c4=; b=Pm252Eq5h9f0F5
	hcY3qslpdqy/uPkuD7TPSGDbIALrMmTFpmo5xDjHRLZJtE0Wi4GxURqRs3MK2lhCPXa1C+JheRwb/
	JY/e7raA5YktySplhFqAh+bT4k/XBOQpgYKOad17OAfMZLgwd5VVoFowvdW6EzAOw+IcHmRNlosso
	BMg6aoLx6lKCVS5HY2ISOs/NEbC5H2v8KP6W3NW6EIJ3LeaU8Pdzw0U5HLX4CPmu4hj/l+Vtt0jvd
	vwQT/6O2HrOzz9LD7yFdLYCuJaahRsMdxNxkuuibO+jNTH908Y3iEFNuRFOde+gRlU76tIxn78qUW
	cMstNkJDjjpVLt+mqe+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkNC-00043H-2v; Tue, 25 Jun 2019 12:16:30 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkMp-0003x9-L5
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:16:13 +0000
Received: by mail-qk1-x734.google.com with SMTP id g18so12382802qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=Jo5ZxbVSIdMopp53XA/lWdARqu1Vh5aO08tEM8lSAB8=;
 b=LjiH2Aick5W1S4iX94IADv/8ufjngFU9SFx5pPZBTdlYAgz3IaLZyyQeSySCmi7D6L
 fBewD81X8OLiO72k7nK37Dr3+KDLT59keFgdwZ1mAvzTtmF4f5W/5Atw2fhBp0HATKBV
 Hee48t8z5OQ1g+x0KQzKSp4AwQsQiTp3n4Xka8baYKA48t0gcHBhNB+wvmLF+1XMeLo8
 DNT9x97d9WjttYql91ZVtuXPfUClWnxTOMgTN1aaPevoao4Eyufm7PFS0pGV6NzuH4Zv
 psinx69lSDpo3IgJ4LbZ9T6bQcszpGB6f2X5/IK+KtSfMYRAxjvb/v7wPTADzCVZIlov
 cLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:mime-version
 :content-transfer-encoding;
 bh=Jo5ZxbVSIdMopp53XA/lWdARqu1Vh5aO08tEM8lSAB8=;
 b=Tn3/T+kl3vsUT+ej8MwwjMdAO4nf5EMD5K67s6qP4TBZkKdtbiShj204cIYmehYYSk
 aRgy3EQ+y5Lz6FgOfjPgDjw1T7USuFbi3/L2QWGscG8qoiSfC0hdz7pUt0oL/j+2vuR6
 OISX/A3AGeNC/RVvocAicvFBNC2wIHLGiI/SPl1l1LfI0NJWOj/zdVfiucYFbPPNcXb3
 rRx5528V8dS4chy78Ljm7lbK9rfx43lPvcUytjpKB/aXU9HggvKHAzZmRl+F/P9peuhc
 x7U/9AH16kTXgATNHYao7WE/rUnOXZ4UUvZKIgRP2zv7MZtJg88h/B7fh0iPrvZXtPoi
 R8Yg==
X-Gm-Message-State: APjAAAWySPyeGAG0bv+OuYZvAO5vWf3CNIH5ww9qTv+dy4MJCVDOQnEC
 b4srR4n8Uv1y10ls0NzNpvtalQ==
X-Google-Smtp-Source: APXvYqwMrlhcyFatGCBkoDD6VKM1BCFRs76z953BDEboVbbhRtdY/MlybjpRLQJs/+vq5eIMwFiuLA==
X-Received: by 2002:a37:4a04:: with SMTP id x4mr22458625qka.408.1561464965994; 
 Tue, 25 Jun 2019 05:16:05 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s127sm6765096qkd.107.2019.06.25.05.16.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 05:16:05 -0700 (PDT)
Message-ID: <1561464964.5154.63.camel@lca.pw>
Subject: "arm64: vdso: Substitute gettimeofday() with C implementation"
 breaks clang build
From: Qian Cai <cai@lca.pw>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date: Tue, 25 Jun 2019 08:16:04 -0400
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_051608_136137_E274398D 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The linux-next commit "arm64: vdso: Substitute gettimeofday() with C
implementation" [1] breaks clang build.

error: invalid value 'tiny' in '-mcode-model tiny'
make[1]: *** [scripts/Makefile.build:279:
arch/arm64/kernel/vdso/vgettimeofday.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [arch/arm64/Makefile:180: vdso_prepare] Error 2

[1] https://patchwork.kernel.org/patch/11009663/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
