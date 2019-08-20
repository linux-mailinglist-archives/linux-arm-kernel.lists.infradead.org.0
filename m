Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07C495DA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddlsSUzNvT9j7t6IYWNHpj4iGeYCyPC82++8YBKXquM=; b=G2nrd/ckkYg6Bh
	gGcbAG1Yn3409u8zt2Do/cv5vaa6CvqRQc5FBR0av31wSjWJUaBTuu1OuQxb1Y1TzPUYOs3DBxK4n
	onwpX6qrv2XujK4hoB+1B67aTKZ67LvccPoJTlkk0KaTeTbc9TAENyo4IliAaeSb1Vspuky6AKcF4
	bZNbc95YCcwipJ1cMky4xTP+1mtIRML9M3L+kRuNcl23tCfwT6JmvwFv9GWdr5fY/TT7I6+loWnjx
	2n3F7/9N+aNz4S+PcsPjoMJvyvvw0wVkrgNfJlCm1uQEtES7+9p+Yx9r+U8K+lBOUlLOLtjLKYot8
	JGHUV/9IIshlFqgxWrTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02X2-0000wd-Me; Tue, 20 Aug 2019 11:42:32 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02We-0000uP-1s
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:42:11 +0000
Received: by mail-ed1-x541.google.com with SMTP id s15so5958410edx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 04:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3a3ksvO52CtO/ttkK+4sBJJjCffAnNgMq3ot08D8hTE=;
 b=YixUBs68BTWBicnObm8UhXLg9oTc2+ORLcfgUd/Du/W1MFNGMBmeO9v0CpCKPNDfOL
 IOv3P3Sy0KW3Cf/mHqmQhC5dYF048v5l9MKyEPipLYYbjwxD0H59P87oFZcAUxJs8Bpg
 TZ1aEoxr3qON74esiOLqh6pfyJNutI2zVrynCMtzDWFU5/3lq5/KWMFf5eqyhEf4R0t8
 pbWvw0NqWOv3EnLSCIbWXXsihVYEJL1fI+6iT4Zmbmou9OHn04p1+7PzMZzZ7yyKCqyL
 Kk9JSwipQzT+aeLr8A97jVZmZOhpTYYMCBCuIaYQAxnOVqXF/8pnIkDuPnZxsqpfAfZv
 fUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3a3ksvO52CtO/ttkK+4sBJJjCffAnNgMq3ot08D8hTE=;
 b=IcrlpgtzewybU+OynQfbaDNBKV0fAfWcaUlgBSIIgZYU+RGpx8m4YFjN30ZlBBDJt7
 Jp2gaaM/etsb/ZJWmLOkdMsCQKSRY/RLAnGJfQVMxk6vjJp72vPOLqE49lMKvwyM89ma
 pcdEYBxBlJI6825V0Jfs4Ay3NOt2TeP1lZzsUsY5wizVhJwGvOCbC0vxM1ECzAvGjou+
 yKH8Eff/H8N8P8k8hfBV01/hBny5b6tv5LEye5LnRxYsfxPxY2GCjVRN2XK3DvE3RSuh
 j+Cuj5AzBvJq4xaz/s9Elxqd2OuYpQxRfFgSjcQKyzicx5fVraG/iMOKDg24JS1PRVMa
 FUWQ==
X-Gm-Message-State: APjAAAUp0Vrd5GNwTS0ZVSkmRJHZ3fGD/r+yy9PeMJ5JblVveptCIgrb
 uYfZqpLdwrJmbPhh9sGOAARs/OhKh35eDE4j9EMcog==
X-Google-Smtp-Source: APXvYqys5DbTiUd9mTqbI3sEh4h1TdEgJjNdpUHqISVmYQkhBiZ+C1YQY1SvjKZBeVx8+M4TD3mTf8Wtu+RfofBl0sA=
X-Received: by 2002:a17:906:1112:: with SMTP id
 h18mr26088394eja.165.1566301326474; 
 Tue, 20 Aug 2019 04:42:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
 <20190817024629.26611-4-pasha.tatashin@soleen.com>
 <20190819155824.GE9927@lakrids.cambridge.arm.com>
 <CA+CK2bD4zE6eieSW2OLQwOQC7=4ncDc8wK6ZjhDO3Dv+BUqnzQ@mail.gmail.com>
 <20190820113000.GA49252@lakrids.cambridge.arm.com>
In-Reply-To: <20190820113000.GA49252@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 20 Aug 2019 07:41:55 -0400
Message-ID: <CA+CK2bDcS-nSLhSjuwEStnxD4FrA+P0LvyQfqKy4g1zaqXZPrQ@mail.gmail.com>
Subject: Re: [PATCH v2 03/14] arm64,
 hibernate: add trans_table public functions
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_044208_509282_782D7946 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > > While the architecture uses the term 'translation table', in the kernel
> > > we generally use 'pgdir' or 'pgd' to refer to the tables, so please keep
> > > to that naming scheme.
> >
> > The idea is to have a unique name space for new subsystem of page
> > tables that are used between kernels:
> > between stage 1 and stage 2 kexec kernel, and similarly between
> > kernels during hibernate boot process.
> >
> > I picked: "trans_table" that stands for transitional page table:
> > meaning they are used only during transition between worlds.
> >
> > All public functions in this subsystem will have trans_table_* prefix,
> > and page directory will be named: "trans_table". If this is confusing,
> > I can either use a different prefix, or describe what "trans_table"
> > stand for in trans_table.h/.c
>
> Ok.
>
> I think that "trans_table" is unfortunately confusing, as it clashes
> with the architecture terminology, and differs from what we have
> elsewhere.
>
> I think that "trans_pgd" would be better, as that better aligns with
> what we have elsewhere, and avoids the ambiguity.
>

Sounds good. I will rename trans_table* with trans_pgd*, and will also
add a note to the comments explaining what it stands for.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
