Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAEA2CAC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/sLEzWrhDS5Kfcrqre6fo9JC7w0W0ov0oKPEOfoIKI=; b=WZJ6hIein/3061
	bDehD6lR7issT3mLHhwJ0TYboJ4Yxv7jPKAHAbcTff/op9M1yQm7ASP4ekSjDyHp+EXXg8GJPWEkN
	X4ENiwEXCCpa1raPS0Uy1X824hGeE+PmRYLnbV9OpHwuwiRhB88G52yMrK3QHsz9eaEmvTF554XGA
	WuBtokMUFToWsj61NYn05oLaShOKDxgvN0/zhSxb2TsWk4rMc0vkuVduKMbbcbNNnjYaMIuOa/AL5
	dKr+mU9ZHsQ+PFLsVflfLSUQAxNMyi+2i1XNxwk/bWaeX/xOfjRkydpTheuwfMqjzNgZRGDZrqnfV
	eFm02Nr1K92RA53B7GRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVeRU-0002xR-QD; Tue, 28 May 2019 15:55:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeRO-0002SW-4q
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 15:55:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id z28so11743652pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 08:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:from:cc:to:user-agent:date;
 bh=ph096faZXzVdBs0AC2/h3o4Rlcsxk1w4xdVivoEx9ik=;
 b=R3rNeE3EFPAheEu0f9OTGy+8ImI3GH2tAv4HZNBSXj+weZKn6WpjuMnGJVU/550ci2
 BqdwJ92g6+fUHbMDAaeYXvy5/c5Z0ns7wON9xfv70YFOjQhvuIq52IxP0V9zOsjOV2MG
 EWBgiHzXSGUeFETN+PgnJ9QT9SHOxXXCTWZ2A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
 :user-agent:date;
 bh=ph096faZXzVdBs0AC2/h3o4Rlcsxk1w4xdVivoEx9ik=;
 b=HmiWjTj03x5FOJc+D87cfAkWooH5DrFWOW7oOIIZG8I0hAjNGO5ksUWBCcuwxBPNWt
 HvpY0nq+K6VbzzDLmI6gS6WA6GnKQkV54hTjp3ImseQJ1UqPhZdaQ0syWw+mJfU40p4a
 M9DRFJHlxgOEVEW85LlaXUyY+P7IgFaTWaPA4jwq4Xx6yi89x3NDBeIEFO2tiO5IKNmH
 8HdKp210I+Ci2apdadl81oGC9C1AGKBRvceH31xQdti8+kw2AdfTd6gySRL28mRRDZa9
 q215H+FxC9P4phptHvvcvC/h4wF/Svagfl2Mj6rg3Gr4jDwfa98uCAHD3/WR5gu0sAao
 7IIg==
X-Gm-Message-State: APjAAAW/jnOqSbPfj9uQN7XtQ2tyfydzAXaBLaXFBBweIsaQU1bXHiK5
 VwP1hK0ji2WdP5fV+6Kib1lQ1hVVLHa6xQ==
X-Google-Smtp-Source: APXvYqyfKz47JLrEjKSbaeCi8/nJyaDNU3BrFSZmaS/tvxlIWn5U0R9ZRrZJBXxc3AQWCJ9jccOIuQ==
X-Received: by 2002:a17:90a:ac03:: with SMTP id
 o3mr6908759pjq.114.1559058905466; 
 Tue, 28 May 2019 08:55:05 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g22sm14805937pfo.28.2019.05.28.08.55.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 08:55:05 -0700 (PDT)
Message-ID: <5ced59d9.1c69fb81.c3ee5.96d3@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <20190527043336.112854-3-hsinyi@chromium.org>
References: <20190527043336.112854-1-hsinyi@chromium.org>
 <20190527043336.112854-3-hsinyi@chromium.org>
Subject: Re: [PATCH v5 3/3] arm64: kexec_file: add rng-seed support
From: Stephen Boyd <swboyd@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
User-Agent: alot/0.8.1
Date: Tue, 28 May 2019 08:55:04 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_085506_192161_BBF67292 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Hsin-Yi Wang (2019-05-26 21:33:36)
> Adding "rng-seed" to dtb. It's fine to add this property if original
> fdt doesn't contain it. Since original seed will be wiped after
> read, so use a default size 128 bytes here.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
