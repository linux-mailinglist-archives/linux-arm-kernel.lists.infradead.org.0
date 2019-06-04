Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A463420B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tmmz1BWDnFUPsV0J3CsJeavYbRItllV0Orz4lxkej9A=; b=CYxjrFa6QEXF87
	fmP0QMMEBpsKsi5zc+kCRjtCzZzyDnJfkKRGOeNAovYSYJYCuWQ1mjDZnD7vGRDiNYN3ybWnRUbk+
	MI+Y4RcFpbmu0MAZxlOkLtcS4tt50k4As57uaz622GD0v8hf/ijnKQjiBhgoahcbzfXiZvYNFXvYf
	YLAwIoQ/E65TDxwZSdV6++gNS/I58EvQtjBerSmhKx3BACTNHvP75aH0BEOsTzTfofvA8nzsk/Yqp
	8XqTfr5/9FYb3HENm4gLKD5yYyFEt1xS2/DzP0x1aFrKYyhDMdC4RFsIsQZFH67N6eE6eLEAGcRgB
	jxpssO2TEwabPHOkh6Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4zW-0005T2-Kd; Tue, 04 Jun 2019 08:40:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4z9-0004PG-9i
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:40:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh12so1984333plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9jjhf1qdL2MafkChBuP3uS+RTNrDWf6uQ5f116KCA2c=;
 b=R/1BYv8OoEAUiLPx6NI4JKkrBSSi/SSZ5etYBe7bvAN6vIDmwNO+lHDRdqjVBNQjin
 H+9WJUbycCX09ft7jeo1RwSbBmS/JbGjhw2h0nRODdNdmH2j8+p3X5/IqSREmbTVYdKh
 jYtr0D6CiWKVJUltZDsvR7Li9ljJdTLEdRCN5BAtnMAw5NgyzB/DuLTgAPN63NPEUBGG
 oyiGOxYJMfgKa5dqaxEUCGya8yjW1QQeKvcqk8RrenqYLcWWqMxyupGv5nxxmdXsdigZ
 8blPkPcHVDXb3yCSelTiJssCWLyxfOWrMfblAEJgCmw7bgfdpkELrwDmK6oQxpemZ4Wi
 6nGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9jjhf1qdL2MafkChBuP3uS+RTNrDWf6uQ5f116KCA2c=;
 b=M6u4vS0HASbbM56s+Gc4r81tpIVBj1SURJ68wql4HfFY0XKlp2P80v9JR3EmyVegYL
 hTKNoVYofG14BtnSy1Gvg/zlSCvyKvOOM6CR/fe82gAHaucFUepiCj3qQZKxz1M+7KPZ
 R+y8J6QfygukH5ca8PVFeDMguWCDBvqTXFZMvC4PY4i0vrNdmqfzDIu36JqLW74Iq7iC
 ewWAzbFrao3H++hyBAcRuPJ2REELKDbCTgpDJzzoxfcJUNK1jYquTAMR427PknttrwQl
 arbyGxKbpP6O7q0osPc2lLnCOd/0fnzD4p0JFWMpP4iHCgDpdF+bUwx5VNRh+o/vjAaz
 P2Fg==
X-Gm-Message-State: APjAAAX1l1hH5G/XenG0VJx6ocNiYQjkhz/13ed8EH7m4aeWwh3OEDCA
 TmBpFCO2VbGoTmvy5giCgsrvIg==
X-Google-Smtp-Source: APXvYqwTQEAPd18gZqeEmzC2WFCpS0mvDpNCW4MkbXVyYBl0A48wQeEqLgL0pHs3OD8tbWfxvM6LQg==
X-Received: by 2002:a17:902:7591:: with SMTP id
 j17mr35215640pll.200.1559637596920; 
 Tue, 04 Jun 2019 01:39:56 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id z17sm4656763pfn.44.2019.06.04.01.39.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 01:39:56 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:09:54 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH] KVM: arm64: Drop 'const' from argument of vq_present()
Message-ID: <20190604083954.wf2q4h75uhx525yb@vireshk-i7>
References: <699121e5c938c6f4b7b14a7e2648fa15af590a4a.1559623368.git.viresh.kumar@linaro.org>
 <0adbeaff-bb5e-54cc-292e-62cb9f73cf50@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0adbeaff-bb5e-54cc-292e-62cb9f73cf50@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_013959_340198_4E7A132F 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 James Morse <james.morse@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-06-19, 09:30, Marc Zyngier wrote:
> On 04/06/2019 05:43, Viresh Kumar wrote:
> > We currently get following compilation warning:
> > 
> > arch/arm64/kvm/guest.c: In function 'set_sve_vls':
> > arch/arm64/kvm/guest.c:262:18: warning: passing argument 1 of 'vq_present' from incompatible pointer type
> > arch/arm64/kvm/guest.c:212:13: note: expected 'const u64 (* const)[8]' but argument is of type 'u64 (*)[8]'
> 
> Using which toolchain? My GCC 8.3.0 doesn't say anything.

I haven't updated mine since a long time it seems :)

aarch64-linux-gnu-gcc (Linaro GCC 4.9-2015.05) 4.9.3 20150413 (prerelease)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
