Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3B01401E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 03:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7im041+BC19ojMOeK/Fwim+N5CL3skwj4+9MhIjFhk=; b=dFb3jpUmkqqCzS
	aovb37ZdzHiS1s/3T/Yev03ay62KRUhKzfueq6LHdrr949Mt4AQHDWSLtjumO0aeijiqaVm1QLfNA
	DilQ2xT6qKAssaqQbgCUzNsRB/rrdBXzS1qqnQw/GNSeF9stf4gYTOtvBPDEaA6vXcxvdcrH7Z2JC
	aNWKJ0n/KWXOq9obcbPrBC34R8lT8dEd69QaSl5bnRw4NrbkuynPX4BPWkg8luRrmXdNXtoGIKTwY
	19j1le0LFr0Sn1K368YQPtgn7RU1SN5uZfyVq9Qc/rxyLDIDsgqZZGHtTZ9kCKKBpg2LBVRF69Wxz
	ul4vMUFiW8xS7DCVdFWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isHLV-0004iD-Bn; Fri, 17 Jan 2020 02:26:49 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isHLM-0004hF-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 02:26:41 +0000
Received: by mail-pg1-x52c.google.com with SMTP id x7so10874373pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 18:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:cc:to:from:user-agent:date;
 bh=VAmOrArutl62PzP5mzQbvYL4N//Br/2fAr/HcMCRVjY=;
 b=WIEMxSOZi1Icp0GFQ9ts2y7+gCgVfokCR/CqaPH04zJKpndx4rZ7vSgvJ7tFaaQyXO
 zExYBLNSj+Gq8Zix832ff+qMY6iQAKjuuW8Fqa+DrLwWMuW/6pSWo4HddYCa1Vx7Zn3f
 PPTJNFroyPXatSW3cKeDqXHGS4UTrERH5Wotg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:cc:to:from
 :user-agent:date;
 bh=VAmOrArutl62PzP5mzQbvYL4N//Br/2fAr/HcMCRVjY=;
 b=MHBA/S+dZbP3E7lq1em3qM6/GqFb5NXGcAzPNbEsYoyQbAKWZ0OYw7gHpof3oTp16q
 5PFazFjzK7efZb7DEmDoc3CAC0CCyEhdSRA19KcRFTdoLxreo46WZU5hd6TVBQZaqgrh
 Bg8wRg4Y/jZskYW1vg+DEGmhiVIpGNz+JLaDm1myZqvKZpraZ1brbWwDs0BSx7WnpnqF
 kibTJdbRxAlCbtQ68dcDoSW70CAOvCuOiJ/B0TXzs5xgUdnHNsc3Gyd64D0wVZxxyjGY
 B1+gKy6SkbzwvC5tyl6T/KypdNrqRoAOpG5c+rc6yn7t797M8rH0nwsHJ+MuyjO+vwST
 khdA==
X-Gm-Message-State: APjAAAWaysvauyvzbs6aFH+qRT0bp0WCbZ0tqqR9Gk6tkV+T+nLnVpAU
 rGUSLuEkwjjqrLI+7nE2Kq9IuQ==
X-Google-Smtp-Source: APXvYqxpUd5r+QQwvhdp81j46cKbjAPZSkr2FDEgoseBTHLTKoZiDBze/ERqIArmFEUy8NVTR7eyxQ==
X-Received: by 2002:aa7:8e8f:: with SMTP id a15mr638012pfr.153.1579227998167; 
 Thu, 16 Jan 2020 18:26:38 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id m14sm208874pjf.3.2020.01.16.18.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 18:26:37 -0800 (PST)
Message-ID: <5e211b5d.1c69fb81.dd7e.0ff7@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <7a8c9a5a39d9d95b9bfca1de3b1f63489d3a4d2d.1579203281.git.saiprakash.ranjan@codeaurora.org>
References: <7a8c9a5a39d9d95b9bfca1de3b1f63489d3a4d2d.1579203281.git.saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv2] arm64: Add KRYO{3,
 4}XX CPU cores to spectre-v2 safe list
To: Andre Przywara <andre.przywara@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Douglas Anderson <dianders@chromium.org>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Thu, 16 Jan 2020 18:26:36 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_182640_490814_AC2F6754 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Sai Prakash Ranjan (2020-01-16 12:03:53)
> KRYO3XX silver CPU cores and KRYO4XX silver, gold CPU cores
> are not affected by Spectre variant 2. Add them to spectre_v2
> safe list to correct ARM_SMCCC_ARCH_WORKAROUND_1 warning and
> vulnerability sysfs value.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Tested-by: Stephen Boyd <swboyd@chromium.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
