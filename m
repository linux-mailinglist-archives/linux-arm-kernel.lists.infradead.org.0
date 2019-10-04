Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E59CB2D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 02:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/Ooepc0D+BFmkoIKgmkyqw1ECNW9XpoOae10Ef9dMg=; b=XzVVX7pdRWyRDS
	Ng4epiMPJM7uvJG4IC+/y/n5n6sp/HggdTsBpmbGPFGE35QbfSFa/GZNMquaTX7zP9ib4L9FXuveg
	WNrz7QWq2K1VOWZ+jYwzy1grp3SL6ZtkMsraIKtqyCt2B4gZZGVpZumLigRy980IodRtYxxEVixSZ
	icjH8jQRY/beTwzI/acPzkMhqDSEa06MPYdircAhX+CSGk0AQoa3nt7q9kNH8Y7VJFHVwaPLhQyhc
	flG5lTjvVKmYzfQB8j32CizBNweLcoAoji6t1DXhDzAO7hfmiC/O9G8N8Tlqtl+UeobtlJiXOe3dP
	/KxSrpv4U076SUJKBlrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGBtT-0002PG-JS; Fri, 04 Oct 2019 00:56:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGBtM-0002On-G4
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 00:56:21 +0000
Received: by mail-pf1-x441.google.com with SMTP id b128so2849127pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 17:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vsoaHhADEo0m8vnXQJHVrVRNPLgsvTkxmxAjz61XAms=;
 b=fBmDO/xeQbbgu5bZoQGRMkdX6qmpx2o+Y3xfQiM4IRBo6skNduHNjW2da5vQ4JJZbw
 3YJVds4hELcJgWW/y2lK5rnOrNQDfcQJV8qyjqe93NarD0ShfHRFb02PG1s9hjU0OxCU
 i/K23UhsmF5InGopsh05egoHvqUeM2qYbk1yxpDn0xnKBrcIPE2MkKF2vkkiXilZiv44
 Irn77ehdk3Z7KO5Lxsoo/SFCgHPcry2UiCNc712m3pq5lmNTuexfnk9aqMbzvZxJsWjG
 aKpH0kj58EJZ+OEr8++3W03WWLZbzgx/QQ2coKOk/+Ahhp/cQLZ6TNmV5316osDR35EM
 esYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vsoaHhADEo0m8vnXQJHVrVRNPLgsvTkxmxAjz61XAms=;
 b=emAhuxutA+aVzVglGtiBzThqaBcA/9rrwhvSacWnv+OPKk0uzhRhYUDfOLpqBlCeZg
 TmgAFaHKkIsYCokeMzrGtQHQ4D/BoRwie0gFUymd2ASJAjsWjQl+vCZH5Vmj/EHTqsB9
 qLQCJhIni7yLsKAUirIuTo+TmJIlPFmjfkHt7UH2Xt31N9R3W8/IcN9tRlxnGQhpRCPV
 8OtMGKqngy6DeB6P605oxdzv6lwH3JQCssEOC729Du2zS/jsXcbU7KuHeiz4Fh8Lj7xs
 lS8NTRtHNs+iz9dYBpv3mbh6YzyKQm+HxTj9K46rbxxwSay61lVu/KDZDVTkV40uRXuW
 hUKg==
X-Gm-Message-State: APjAAAXxPHJ3Tf3aHWPSYcmz8K3s2PgIFDecCtRwJ4Ne6nTKHg+QMEkC
 g7k7kDt+9W3trzN+aPjFITg=
X-Google-Smtp-Source: APXvYqyeWm7iK32lx5UhrAodOdn4KDG2iD6DrJDU4ejey4Gkxi1PJQgFKTsGXaDwFUT/KwqZBnBHwA==
X-Received: by 2002:a63:4cf:: with SMTP id 198mr12603132pge.105.1570150579814; 
 Thu, 03 Oct 2019 17:56:19 -0700 (PDT)
Received: from localhost ([106.51.242.142])
 by smtp.gmail.com with ESMTPSA id g4sm4320546pfo.33.2019.10.03.17.56.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 03 Oct 2019 17:56:19 -0700 (PDT)
Date: Fri, 4 Oct 2019 06:26:16 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>, linux@armlinux.org.uk
Subject: Re: [PATCH] ARM: NOMMU: Fix exc_ret for XIP
Message-ID: <20191004005616.GA7046@afzalpc>
References: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_175620_561803_63BB77A5 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sza@esh.hu, linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 12:41:28PM +0100, Vladimir Murzin wrote:

> It was reported that 72cd4064fcca "NOMMU: Toggle only bits in
> EXC_RETURN we are really care of" breaks NOMMU+XIP combination.
> It happens because saved EXC_RETURN gets overwritten when data
> section is relocated.
> 
> The fix is to propagate EXC_RETURN via register and let relocation
> code to commit that value into memory.
> 
> Fixes: 72cd4064fcca ("ARM: 8830/1: NOMMU: Toggle only bits in EXC_RETURN we are really care of")

Thanks Vladimir, cc stable as well ?

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
