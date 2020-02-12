Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D91315B369
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwzsoPYb1sFoEZBv4SxjfHkQaW4KGu9TY3tHy5oVLzI=; b=vBor8NLnq8IFIK
	/smQxFaeFN0K79MtjwfQ0N8/9FUax1NsqddpUmh42oJOqtsM4k23i0+Cy9uPkyMa0bFcvHC4HTPFY
	AeRq/1C9nigFN/rZnrRUf+n6LQBV/uUz6xq74+gsihFn705e6BtnLN2vMbR5pfCYw27dh8D/khe0J
	9JWetnxz2vPjZhtqaWoOUMOdOrOrT7RBVD7IbTCVqyCRveLs044iZmI0jic/odDgXgn74isnMRd2K
	f1hh55CBUEjCQAvs83UQ+Rgz7RuyYqqFtv6GHZNm2kPP7EWtGN3prMOk86GAU4HdhowWGKB4ogQz5
	Z/NEqkIgaMML1uUwSARw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20D0-0005nV-JR; Wed, 12 Feb 2020 22:10:14 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20Cr-0005Fk-UU; Wed, 12 Feb 2020 22:10:07 +0000
Received: by mail-qv1-xf43.google.com with SMTP id m5so1705322qvv.4;
 Wed, 12 Feb 2020 14:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=cdFC4Sw+amJDnEOMffYysz3PsfK9sMY043rnSWe7/YM=;
 b=KAdSUhYCm4EKSCvAwuyjpY9CBE8LkbBg+RlKisgUNO2Gp0VpVBxINmGcQqUFUjWf2T
 e20M3V0f5wA5yiqnJi2kJ/EXBV0Dl6xWgNdwpVyvjdZegwbvseDkjvsZNALFZQOvhliN
 VllY7hDUn5+cDbxx2pKS+H2AG2RUHhMwPD6C1kZ8/pCoXNg93+BnJVRJKWjjhelynDeJ
 BoWhGrPYv0YnZRVCDvCWSJhQsvb757R7wMhajhvhImQpghd1/01Us6N6oEs4IfNxXmsA
 aQLsb5baITGLE4uDuw0JxWjWNyslVzFaWD2ym7uGdtGBheqZVFgDfphydU//+bVS/pn8
 WsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=cdFC4Sw+amJDnEOMffYysz3PsfK9sMY043rnSWe7/YM=;
 b=Cc3pzlytrMMOS+qUnHFO3hm0G6/FnHbtLln/QCIYRqaEkerXsK9ab1H2+UcbIHpjSt
 I9cL5tQxVPlhGmuE1AM1kfCtIfGEayI/AxIAWf4KWWoKaA3jDJ7kADDHBflaBiBez7Wy
 HSXH8c7QlbQwC3nTIOWsGVcgJnhytyEKMvXcE7361n0yHy/t4a6AtWjGfVLNzMDPo8Kc
 P0SteHEBlZjXnqgSnyZIUgUdYDBkpmsKk5an8EoJXKufxL1IJPLJ9skuBhxE/aiYZCMm
 4cNAsa3jezYtnw/E2+PtDJDYrnm3lMbIYsJTPK1mxzFCNT2FBc2CfS17+CFgYJEKsukX
 Kr7w==
X-Gm-Message-State: APjAAAUR9k2gfNpCtZaNfv6Dsi6xblAUG54Omk/CTCJQwsotPl5hYwwf
 CIMgMAdJJZjJfM6iiLq75sQ=
X-Google-Smtp-Source: APXvYqye2t37XZd6Z9apOR3wigBgtJDxhvPSPYG/19AuNeNK60F3VhB9U+/UkRAyZrCWhH9scv8Vjw==
X-Received: by 2002:ad4:518d:: with SMTP id b13mr9041062qvp.141.1581545404154; 
 Wed, 12 Feb 2020 14:10:04 -0800 (PST)
Received: from localhost ([2620:10d:c091:500::1:985a])
 by smtp.gmail.com with ESMTPSA id w41sm283605qtj.49.2020.02.12.14.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 14:10:03 -0800 (PST)
Date: Wed, 12 Feb 2020 17:10:03 -0500
From: Tejun Heo <tj@kernel.org>
To: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
Subject: Re: [PATCH v2 3/3] kselftest/cgroup: add cgroup destruction test
Message-ID: <20200212221003.GI80993@mtj.thefacebook.com>
References: <20200120145635.GA30904@blackbody.suse.cz>
 <20200124114017.8363-1-mkoutny@suse.com>
 <20200124114017.8363-4-mkoutny@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124114017.8363-4-mkoutny@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_141006_018308_9D795659 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [htejun[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, surenb@google.com, lizefan@huawei.com,
 linux-mediatek@lists.infradead.org, linux-kselftest@vger.kernel.org,
 hannes@cmpxchg.org, matthias.bgg@gmail.com, cgroups@vger.kernel.org,
 alex.shi@linux.alibaba.com, kernel-team@android.com, guro@fb.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 12:40:17PM +0100, Michal Koutn=FD wrote:
> From: Suren Baghdasaryan <surenb@google.com>
> =

> Add new test to verify that a cgroup with dead processes can be destroyed.
> The test spawns a child process which allocates and touches 100MB of RAM
> to ensure prolonged exit. Subsequently it kills the child, waits until
> the cgroup containing the child is empty and destroys the cgroup.
> =

> Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> [mkoutny@suse.com: Fix typo in test_cgcore_destroy comment]
> Acked-by: Michal Koutn=FD <mkoutny@suse.com>
> Signed-off-by: Michal Koutn=FD <mkoutny@suse.com>

Applied 2-3 to cgroup/for-5.7.

Thanks a lot for working on this!

-- =

tejun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
