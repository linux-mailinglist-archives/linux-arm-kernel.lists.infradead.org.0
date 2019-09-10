Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E33AE715
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 11:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6HKZq0YJ7srx5n0IW6Fwa6rlbOSwidmuDQ3VRRvrJ0=; b=LOLkhIaSy6CX1G
	oC3Dr+u5RkiRFdjnXo4PQyKVZaWYsBwrC7lsaK78Zclg3VgshreiKri8sD3Z1DLEwoHBBvMouAaLp
	yy5rXvjfD7oE6gvSIk5Ojv5ADbBvyqZuutPcxLXQlyDNoX65Qp8I2FImkw3dAR0J7GyF96xs8zXuZ
	zYv2iO4ZxJHHdiKmc+SQB54RYnejytn0HH+PgWo+i6E6u/FYCWHidSXbgh27TAFK/IMuIj59C2YTg
	GoX4WiG17fr35/Q8XDLxNhM3D3SG8jQQwKefSC7iMMIi1jwU/6XqztCHkbxSmkgmkH4nZnP+4HXp+
	LjJnS67YjiRhs3k8prLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cZ1-0007dc-HW; Tue, 10 Sep 2019 09:35:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cYi-0007dD-T2
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 09:35:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id t16so18720125wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 02:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1rX2wfx0JM+S3vqvQq3rPdTdgiJmEP9yW+1Ecnaf+eQ=;
 b=HKVmaZWxvrmFAbNs8+iRkUl6VWB9pff9O5nuwvo62jxuPsi4pDbBT6HNOYJzKRvRBg
 3BYHVPV5Y81TGwTspomaA5RiRSWwHP2wHdf2PtiaNIOdpdlyXAqr1UitYgC4oI9fKTmV
 XPJ/FfJgEbbQj2q2or7+ju/2z4wwgf2iuHjUNFtN/J/kN7lecmeI3Gg56R0FlTXcSqr6
 CBlrbL8cVgxFuZijsEuobwTlCrtxyDhvuWD8P4ge4FIiBkrfzTIVUwX0q/yNvmxBIjjX
 zoh/cx7bpDhtJ+c2fCBljDuyw1wjlBa0AZZcnhncDi/IQ8qos98Tww2p1Sk90hfP/Nj+
 jOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1rX2wfx0JM+S3vqvQq3rPdTdgiJmEP9yW+1Ecnaf+eQ=;
 b=QagUvkpjjEHVDZH9xlEodVOMkKkT4D4pF54ivH9czaqjsJbBLMbMZFs2DSIhi0Jgy1
 vcmminm6fIgWDOQfsaPRs1uJ+LPatHkUJEyoWqgODfei2PHEnaDOa+39Pu2TNSKW5yM8
 5pqspB7KGvTU55+PbewtwT8NmxoqhRpbu5z3WObGKDv78N1FtSbwa4JfRguYtBw2rWdd
 wFVAZ427/QVkC3VlEGeBUezWnVTKx2kFBz56I40/42nOogLhmbEaXjol2s++Hle+m4WU
 lGRn+nSlaXzvPP5/baxhyZyxizj2/8Q6fkFwXuSESnFLM72KvMh9XL2xZHshcGmuzlT2
 VQfA==
X-Gm-Message-State: APjAAAWvSc3YWc6Az9pr6qS2T4jzybfEe82ZWY+/MocKWHXw2Z1gxCNs
 bo8ILDAmJ4NpVH9ly9qAOAhA8g==
X-Google-Smtp-Source: APXvYqzw/J/EvVDjJcgPFGrJCvlsJX/IISQGIYepT3xubHZUCB8b0v0z9zWwkUA1kAv7dsxa0cJNBg==
X-Received: by 2002:adf:d4c5:: with SMTP id w5mr24604774wrk.280.1568108134936; 
 Tue, 10 Sep 2019 02:35:34 -0700 (PDT)
Received: from localhost ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id k9sm32760428wrd.7.2019.09.10.02.35.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Sep 2019 02:35:34 -0700 (PDT)
Date: Tue, 10 Sep 2019 10:35:33 +0100
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH ARM64 v4.4 V3 12/44] arm64: cpufeature: Test 'matches'
 pointer to find the end of the list
Message-ID: <20190910093533.4wajedq2cfg45zcx@vireshk-mac-ubuntu>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
 <20190902142741.GB9922@lakrids.cambridge.arm.com>
 <20190905074506.oxsw24xoex7gcfgm@vireshk-i7>
 <20190906134935.GA17375@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906134935.GA17375@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_023536_942171_00724082 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-09-19, 14:49, Mark Rutland wrote:
> I think it would be worthwhile to do that ASAP to make sure there are no
> boot-time or run-time regressions. We can look at the logs later (or
> re-run with some additional logging) to verify things are working as
> expected.

Sure, so my branch already goes through some LAVA testing from Linaro and
kernel-ci as well. It also gets build tested by 0-day testing bot.

I will make sure it runs on some big.LITTLE stuff on LAVA. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
