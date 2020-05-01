Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F19D1C0BEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 04:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IN+bcGL3RkyENL0RJW41fNQRVHG7on7ueBnu05TnCVk=; b=QXH
	dcK4AHM1VNClL4mw5Qh+G4PoTdz8JOQ5RDUKoucSMW/ueSWhPJpcQOJ81TSZ2+lje8z4bSarH5r2s
	MYJardVUfslUkDwIose9ZA84lODA+1zp6XxgbTtBG+DlkiMcMY1B3PsFpNDDzhKafRC3ymRap2BPg
	UK3nmb2y5ZXL447UVD5g2ld2cmdcjwT7niYgNM4FiY1OOcMMUqFOaFNMI3qQhk/ezxzM77e7NwRNK
	o+cpl9+0/3zXpQslq515rG3HhOUo3Upic1aW8ZmjoghAWGziFRIJkP6+EIE3l3LXG29C5m5q3k68s
	uEoCjOP2blrrmsKVqo2MdmUq8WlVptA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUL0g-0004br-OZ; Fri, 01 May 2020 02:02:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUL0P-0004YD-Dt
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 02:02:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id x2so957473pfx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 19:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id;
 bh=xA0+ztltjFSmlxto0oGrs/28x8dQq3lRcLWb+lb2nnI=;
 b=CarECDVW+6KLvf/YyEzSNITvnJPj0ybvXe2NxRdC1e07BJ5Wzhrm9MnEpFVjJZX7kE
 AwSajPjRdMdF0h8zUllcxmIy5i2ceyZbmkevlmDHXGOxVjdaZJuDGWRh8r7k9Ok+Enbz
 mGPfKsaD8R4c4uSPSv6J5/mxtLCMQpUX6zVHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xA0+ztltjFSmlxto0oGrs/28x8dQq3lRcLWb+lb2nnI=;
 b=egOscr+Ad2Vk3aDsUx0A0DcVdfq5jdjyojoNbVT4A2JSGxlGGxgyEL/1GoB0IXk9Si
 Tpyp1+BrzW8Lb72JjSEuXTnHFWasBzLlI+o+MILL9v+MFYKp/XRcBShGAngUOKSSOKL+
 zCshuCqSno8zZqgWeVqnK7Ez6oKP5LGRCIPMlkbl4ASyD5oOtHS4XLjM9QbT5SRKGQ9G
 8OYeWtIIWQ6z8GHYSmIZ2BRbFMvZIzsUZEi4/mUIgqNnPBwzI6A2tcvGtFLWQRqelpPm
 QzT+ws0cIFITKp9sRnyuTRvzVspaFEyDl/Vjvs2qOurb4uO9WZ6twhmCCkoDI4NsymVB
 Yadg==
X-Gm-Message-State: AGi0PuZSj3DQRGVAPUkbMDLyKy0idxTjh7s/MPOl/w/HTWvye0+iEr0J
 noRHgrcDWaEwzjSYWdjk4xwQfg==
X-Google-Smtp-Source: APiQypJhA82+WhNBkkgzPwnXofGL1GnfNooa4CgxEhzB9JSc3x78tYjLRLZVYOiIolegraWmwYU2Qg==
X-Received: by 2002:a65:4645:: with SMTP id k5mr1943443pgr.115.1588298539843; 
 Thu, 30 Apr 2020 19:02:19 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id fy21sm802915pjb.25.2020.04.30.19.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 19:02:19 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [PATCH bpf 0/2] bpf, arm: Small JIT optimizations
Date: Thu, 30 Apr 2020 19:02:08 -0700
Message-Id: <20200501020210.32294-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_190221_489139_47DAB598 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 netdev@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Shubham Bansal <illusionist.neo@gmail.com>, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As Daniel suggested to us, we ran our formal verification tool, Serval,
over the arm JIT. The bugs we found have been patched and applied to the
bpf tree [1, 2]. This patch series introduces two small optimizations
that simplify the JIT and use fewer instructions.

[1] https://lore.kernel.org/bpf/20200408181229.10909-1-luke.r.nels@gmail.com/
[2] https://lore.kernel.org/bpf/20200409221752.28448-1-luke.r.nels@gmail.com/

Luke Nelson (2):
  bpf, arm: Optimize emit_a32_arsh_r64 using conditional instruction
  bpf, arm: Optimize ALU ARSH K using asr immediate instruction

 arch/arm/net/bpf_jit_32.c | 14 +++++++++-----
 arch/arm/net/bpf_jit_32.h |  2 ++
 2 files changed, 11 insertions(+), 5 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
