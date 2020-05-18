Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AEE1D7CD4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dLNzPnqOpBok1MhgtkVZuoQWfldJ6AbUO+TTcxiOVI=; b=rTzpQmq1d58CK9
	L3RCTvf3hFfqsSWzq+DKQuGG+5X6y2cHGUSEA3x4bPyvPi4atBow3N2QSrWXz1zOxG7tWOkJEmhd3
	YE5Aq1m0wBH4jm89moxUHAS5XDOcO7f1eRMn03YI/xW2nhb2BbvcICIWXGxy+IAvv+FonOoOdCSMd
	LgWIHMF8H+08HnnthmT09L549kx2AWT4N9bET38PwvurYXTUF6cCnTkI5jCXdJ+jNswsVIoh5Gteb
	yrsNsKzN6UtC4l61kCQW6fHYZ5a5+eq/3nWJ47YE2nzhivygXKqskH8gwiWTFPbAnfBZzZmwaDsIG
	twMsqwKJOMnuFsZkPNtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahhV-0005n7-O8; Mon, 18 May 2020 15:29:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahhN-0005mA-Jw
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:29:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id z4so8566135wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 08:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4WixP9zOQESaEUk+grq6tjXSo20K+tLvJTvsRgnudUk=;
 b=RWSt17Q/P+CTGFhSHnF5vSVIgqEukfT/ue7prWyK3v1ihEQJc74VjQg5Bf31WcJ8k4
 jouQvwUwfngsU4A8QwLSizOwMcPiatSqqmPp2eqpf6+ZgdMWG/CwdnXnaFSH95kncofW
 /3vslGy5j3My4P0CocjIZaqunf0B3RGMsfOFHTDhT1yA7eMR65w13RBfRRWu9A2RRq3w
 PhKzgdxDPMxyMmYxNMqqiqB7BAkv8RHT8Cfw12/pH5LYoKTZyT5pss5xdr7wLA3w5YHj
 TGlG5y2rQLbmZQRREQPmyNEeDBoqsCtgSPI8DYfBiw0OQQSr8AvpQOsVY9LVCxvlB54i
 kMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4WixP9zOQESaEUk+grq6tjXSo20K+tLvJTvsRgnudUk=;
 b=jkz8dZ1jkiDbw6IefQQaqT/OZPGGAy9eoeppvHwoKMXpDe5jchvDjRPTSxtAxnzM5j
 FaURdEXkUwJUhCZb+fKGcHckpPPI0XbKGA6EcHEoXeZ7UO/ywxmSxihCD+misCcmrioS
 pykH2bOFedWt2zOcbLN6gMmbGtohvUiN5cAYf4PlXy2YrejJ2yzu8R+8jUEoe7h9D7W3
 3lsK6gnGnzlyjemzpc+A+a79CxaCyJd+P2LKv3fOo4JkpLKG3SHQMHGMk4jbeqQ0On73
 tCmoOyB+nMozF62YYC+0jrn6rfVHnHB+jKNgBr3hgxNqWG53TPvrkegkyBQpa+lrRXkM
 ssFg==
X-Gm-Message-State: AOAM532pc2UCppEsgqv9XMWQMB8wynNMlSD6nXedUgKJLGbXu8cMs2st
 EUAmbxUeYo9TR5B5GVgvb6DrZQ==
X-Google-Smtp-Source: ABdhPJxNgUPicwALsWOh/eNYOxbadohP9rcnrjnk2Eie3S7vO1kCgSNAmXH0HQ9ZKDHh7XTExrpDBg==
X-Received: by 2002:a05:600c:1006:: with SMTP id
 c6mr20951848wmc.133.1589815736776; 
 Mon, 18 May 2020 08:28:56 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id r2sm17269506wrg.84.2020.05.18.08.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 08:28:55 -0700 (PDT)
Date: Mon, 18 May 2020 16:28:51 +0100
From: Andrew Scull <ascull@google.com>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH v2 07/14] arm64: kvm: Split hyp/switch.c to VHE/nVHE
Message-ID: <20200518152851.GA147668@google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
 <20200515105841.73532-8-dbrazdil@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515105841.73532-8-dbrazdil@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_082901_671992_5C96915B 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 11:58:34AM +0100, David Brazdil wrote:
> +__kvm_nvhe_sve_load_state = sve_load_state;
> +__kvm_nvhe_sve_save_state = sve_save_state;

Building without CONFIG_ARM64_VHE leads to a linker error due to the SVE
functions being referenced in this list. This is caused by
CONFIG_ARM64_VHE disabling CONFIG_ARM64_SVE and, in turn, preventing the
generation of those symbols. There aren't any references from code, just
this file.

It can be resolved by having the SVE symbol aliases depend on
CONFIG_ARM64_SVE.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
