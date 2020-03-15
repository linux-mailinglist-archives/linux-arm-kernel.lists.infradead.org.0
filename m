Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8CF185AE0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 08:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/R8yQMntBTReuZ5eZ5guyUF+IrCuzCswSXYDehu4SW0=; b=mE5eWbTR5khdUb
	k9eonaGO9JnjHcuE2KAZRWP0/xwf6abU+louQ31vhIRpJqZvSMugKELaLdhn7kqQAd92gDc93omGX
	lL0Ulxch/yqx2ka3oiPCEWSvTrvw7AFWpoM/kttAOFpB7d29/73XCaP+ZfXnvIpXvnuIHJOLTLdBX
	0J/JeSzPbGsbVLdkUT9oTdI31uv2/xjn6U6S4tU6baLcebT0m7CVSfjnv/M6tZg47sKS5dAj4Hbc4
	i5ZD1HjhscUTLvt/upUq3a33eolh4gad2jHhQa5nBVpgpE4f47IoVcVYU/ZDNFnvtktGKKid6pCWN
	VoU7Q41urvSd6I/0KjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDNRS-0004tR-LC; Sun, 15 Mar 2020 07:12:10 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDNRJ-0004t6-HZ
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 07:12:02 +0000
Received: by mail-oi1-x242.google.com with SMTP id k21so14332740oij.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 00:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Iv77R9xIf2Zpsv1uSDBTkW8/S6yCOSOT3Zqw79KydcQ=;
 b=jY85eJ2U5VTlShse99xoMUEpxK9C3/jNRTt4TsSlUV/X/A9mb0yc9Izf++OUtEaXeY
 aqB0crDjj5kG9Am46iR8uxP4K8MYsc2uVSPxUjJfQZJUTISZPPwy7G0edlrcDMbgtK3L
 2dEU6jA8WppacltoUkYSR7x9D8b8xKv8pD0nj2++nLlDFFr/1aNIWDnGzLta+xCkfbnU
 fTwyrRhMMWO+bfBW2fM2T/VAXW4CtkxvdNLdiYgZqj28Zg+IEsy1FaRToVHFvcNkqDf2
 ygwxG9Z+6SEvS29n4h6JzvVojUA1hqmJ9rmGYA2hdpY/lFZdi7YJhHab2SjcQ8/o/8uE
 yWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Iv77R9xIf2Zpsv1uSDBTkW8/S6yCOSOT3Zqw79KydcQ=;
 b=cB1RtGuqk6FwKPmI/qfgLIXLafTVpS3GMYAv3mW8WOAFsYXGKNUwxan4WlsPgR1Dzx
 TLyVTU8lm20LmMKJSgOV3doibyhW2cNXj9hDyfPSAbP5iQ3SI+NCG8wv0KAj+H8eruwC
 6v3GmtK5/SezjM1in6RutVnZqFRbq0aACN25qlJMVSveCnAKqLXdYNbby9CpcIJrcBTU
 1Tr+i9gw6eEOsBT709zYiwvjkH/Dq1b6lsKZcyVX8piXeR5wjzWU0Cja/IFZkJiOyGHX
 2aeUSu/IsV+GkTp9V/gQZTQ8A05eZS27NIaAmK4PwHPgMijGZm/0I1XbL2So4YceWOfn
 8G2w==
X-Gm-Message-State: ANhLgQ1QBbpstlXL1jnzQA5+TyQJGcrtcoqYJt28ciT9GdhQYMvQtGBm
 NzZur4qlUcx7n3xDiOYT3pI=
X-Google-Smtp-Source: ADFU+vueMPfKqmKSQNvPkaQIlyhwfkEvf41MYvMKaO+gzudevYA3ndfvjrWYfnmAmDUtwenU2bslVw==
X-Received: by 2002:aca:aa55:: with SMTP id t82mr13291293oie.147.1584256316688; 
 Sun, 15 Mar 2020 00:11:56 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id c3sm8649193otl.81.2020.03.15.00.11.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 00:11:56 -0700 (PDT)
Date: Sun, 15 Mar 2020 00:11:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v2] MIPS: pass non-NULL dev_id on shared request_irq()
Message-ID: <20200315071154.GA31696@ubuntu-m2-xlarge-x86>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
 <20200311131210.GA5115@afzalpc>
 <20200311160307.GA15464@alpha.franken.de>
 <20200311163249.GA4984@afzalpc> <20200313121138.GA5985@afzalpc>
 <20200314081312.GA4948@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314081312.GA4948@afzalpc>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_001201_588412_4D2B31E0 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 01:43:12PM +0530, afzal mohammed wrote:
> Recently all usages of setup_irq() was replaced by request_irq().
> request_irq() does a few sanity checks that were not done in
> setup_irq(), if they fail irq registration will fail. One of the check
> is to ensure that non-NULL dev_id is passed in the case of shared irq.
> This caused malta on qemu to hang.
> 
> Fix it by passing handler as dev_id to all request_irq()'s that are
> shared. For sni, instead of passing non-NULL dev_id, remove shared irq
> flags.
> 
> Fixes: ac8fd122e070 ("MIPS: Replace setup_irq() by request_irq()")
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
