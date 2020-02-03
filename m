Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C8015124D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 23:27:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iaLWAus+dqhKuY+HsBfH/Nn0y60nZXXg6Hs7lQpnflY=; b=B/G
	88ze68yLI/pxKWEajJOdHVH1AMGkFegW8Qcv0wbiRfsdNDIDQbNCcbiSy0RYvXY112fpJ5AUlQyWN
	fYqWRCKbxhITsgF4ORjWge978LoOo9IZA9xkPUBQF+MqtFcsAZoHFOzuba3VRhZdH4JB4A2JE8p/q
	O2EZ+z5CoWG8KlbbCt1N5zeOhlWx00Eqab3N6BdS85UCVBrmC/lxQdfMwvPbkSelr4DlKVkhR12LG
	12sN+sbBKL+axO4WLQUQ0+/BNoyoUtaGBo2dl9HdbHnlfvAhx495AoZ8fXNw2MgEU2Utsbh8r98Lq
	v9Ce0sgYHo/5QhEbbrayobbxjbfaQVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iykBL-0005Am-Jk; Mon, 03 Feb 2020 22:27:03 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iykAy-00053G-9I
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 22:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580768797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=tV1zdr5mxr4Q8hrQAculXRtNFUc0E7Rj7Ul+Q9aX23s=;
 b=M6xNJ+iMdH7L2PMz+j+jz1ITXQpwu47exoBMzY2QuIRfX+6TFy20+vron/vO5DQt5XaEAp
 U4XYk9nWZX944StP4fWHennQhQWsoRI2yT+kf8NfHhomwxQmiMFGP/1USd2dRK6U8lxe0o
 OQNCQrqj7MRJt8mydUYoKdrueMxMFXE=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-YUHC9i92NOiDQTTh-mz1YQ-1; Mon, 03 Feb 2020 17:26:33 -0500
Received: by mail-pf1-f198.google.com with SMTP id r29so10216749pfl.23
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 14:26:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PKlVXWvAtzBh0O+OSdcgLrbxm6cHx3rHTWHUYIxhjyE=;
 b=nb8BeYwv+SyX7/ZNVsE6YIPLWEZTsLM/ncdLPl9Z0w+ZWlxk5Rue4P1vGQQ5bt9q/w
 0eijGYOUPLDpq/No5UrlltlP6rYoUsOTEikimrsXxXHj1IJ0SvFe0uD2Y2BTHYYoy+hE
 1GfKryrypy5NxigjtRGDcqocret/C7mSvZ5RR2cQyRgjv0HzmKDXNk/nEZOrjYNXMbhN
 Ngljkx39DwE0whSUFl524wpKPMfPNWsomz2ofOFfdxi0FmNXlozzmnV3sWyZRYaTrK/P
 b4RAH5BPDLu2mRIplb/d/JcAiISxVvgN5fMSqD9y0umkVZmsbP0HZPyKLGorkAu8f/yE
 1LfQ==
X-Gm-Message-State: APjAAAXIaigoDfVmRdDANcFE7Wy8M5ykh6k4o+Y+EDywt85sjY8bd+ps
 jVmaJep2SbPN4QlvLkaiuJ7fG6fvV7DyNzYZqJyXhuD5Whj7WTF7rfxUzlZxW7iu2tGCIlcvJhB
 AwKFwXo42lEKas1k3VzBxGpNVB9muYwr17GE=
X-Received: by 2002:a63:6607:: with SMTP id a7mr3246869pgc.310.1580768792787; 
 Mon, 03 Feb 2020 14:26:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqyLQjUhinPxT4gqFJCuEvTOo0KmNsperkBusji/i/cCiipn9md1/jw11bm4ZjlvtUiTM27tVA==
X-Received: by 2002:a63:6607:: with SMTP id a7mr3246847pgc.310.1580768792486; 
 Mon, 03 Feb 2020 14:26:32 -0800 (PST)
Received: from localhost ([122.177.227.116])
 by smtp.gmail.com with ESMTPSA id c1sm21606857pfa.51.2020.02.03.14.26.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 14:26:32 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] Fix some arm64 perf issues
Date: Tue,  4 Feb 2020 03:56:22 +0530
Message-Id: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: YUHC9i92NOiDQTTh-mz1YQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_142640_407740_87ED4DC8 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset tries to address some arm64 perf issues.

While the 1st patch is a generic one and just removes a dead/left-over
declaration:
[PATCH 1/2]: hw_breakpoint: Remove unused '__register_perf_hw_breakpoint' declaration

the 2nd patch addresses 'perf stat -e' like use-cases on arm64 which
allow per-task address execution h/w breakpoints:
[PATCH 2/2]: perf/arm64: Allow per-task kernel breakpoints

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Bhupesh Sharma (2):
  hw_breakpoint: Remove unused '__register_perf_hw_breakpoint'
    declaration
  perf/arm64: Allow per-task kernel breakpoints

 arch/arm64/kernel/hw_breakpoint.c | 7 -------
 include/linux/hw_breakpoint.h     | 3 ---
 2 files changed, 10 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
