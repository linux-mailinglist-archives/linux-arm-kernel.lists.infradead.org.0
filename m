Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889251DACEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UAWq8mmXHDI1usju3o+sulvPxmx5WBfC8pZWhW1B+9Q=; b=rgOKS5DBTvr0zm
	YqZNd07Byya/RHzTVsw2mbqwevimllYPnDn3a1gKrJmY2BGwup1vFytE8Sd1Mmk3Rgim/EzbiNOZw
	+7H1W8CDDQqm2gizxV2t5P2+SbEl0Wgb56nGPmbXhwfimttDAvUGffAE5GpCCDEuzgTBHzTpvqwOJ
	w7lnTh3T6Np86HHUEL8m/UQxioUNs5ucyCWTYRWZpf0ICM7RR3o0+wn4wNm85mJRLLfgGM33uavs5
	/CCMVxDOJLbvdKj7wUwzOjBnTqfHVsD49HRSe70o6WZMNc/+ZhDCVq8txG8l8llO6vmmotgblp1sg
	NPWEkHkQBsboNxK594fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJmT-00034F-JO; Wed, 20 May 2020 08:08:49 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJmK-00033c-Na
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:08:42 +0000
Received: by mail-ed1-x534.google.com with SMTP id h16so1996088eds.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=hGQPgngsNi+rbEFYQqDJOXPJ1ukfQB1bRxgjRnj+KMA=;
 b=QWH15e0Bi1I0F00aLOOneOZcV3EwIOjZEgQE1w8sWAR1D1L/L2IJQGx51an8Se0NQU
 kan75id/6Czk2U+XKDDYivGbfiofcBIHJOVjjfaCRepnqg1zE6/0sPkTEkGrgzJEnDaC
 ZsXUCnLIU9BMLb67xn3gtd9Sp1MIGsSLgpPCjl7HkXJ9S4zh554QTNqtXYT0jp4FL80W
 ft9sKUO+UGAvKA7CA12D5u1LDmJ3DWAgmWEtjXEuST5I+Vkumloft26eF28diuYuQw1D
 78qAl1Sj8XPptTM3YuIs3lBjAlF9++ykDRWSjHl3foiSRNsqmUkAEi5BsPDZmiRLeJut
 g6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=hGQPgngsNi+rbEFYQqDJOXPJ1ukfQB1bRxgjRnj+KMA=;
 b=Nx1uzWxkuj+Y4ORvHzFc+R/iMLpMxg9oelxExg+HV0mBfa6OjZFFZObrl1FLG4vabX
 k7WwcaUewIv/o5yEEbPMhVFI0qPSuoZYOBC7RRzQFkW4OAB/Fu8GxjU3u3AGKZuN+Xi1
 pN4dpDsPPs7l3znTmnaabiloekmrRIa58YHzUtJ0htDZ8OkKXXVTnSwUmXmIzbQDEYar
 zoCqUcI2zZzzQ/3zdLvafHbMKxKgOCglN6xSAB2mzKILHlGjCD4t6DdHTsk0r7D7rv3G
 dc21GoYjFGojKl4IebguOkiiWoKbspzFkTAb5H5PPeZtERCHeI0cwxvOiW4KVa5zraa6
 XCZg==
X-Gm-Message-State: AOAM533znICc6nQCHA8ed+uEC/s7E+PbRs7UGTWbBQZU6qkg+iTCbE71
 rXvXtIBfjkcwGFNb1N7dFur2i2Dqh4awFM8Iff3DHlYv
X-Google-Smtp-Source: ABdhPJzkjtlX4s2gKKu3tRen85CSp0c85SY5xq5F1M9vjmFm7MCgfMsV2vW6Sw4vX19nM7fuH+G11ianZn9JpDi+D+U=
X-Received: by 2002:aa7:c1c5:: with SMTP id d5mr2199503edp.183.1589962115763; 
 Wed, 20 May 2020 01:08:35 -0700 (PDT)
MIME-Version: 1.0
From: Linu Cherian <linuc.decode@gmail.com>
Date: Wed, 20 May 2020 13:38:24 +0530
Message-ID: <CAAHhmWiezrmtChuowQ4gyn8qhSUnfjc574P_riqHzTqifZK=dg@mail.gmail.com>
Subject: Clarification on necessary barriers before generating IPI
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_010840_786109_D0F31F0C 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linuc.decode[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: maz@kernel.org, will@kernel.org, Linu Cherian <lcherian@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

How is it ensured that system register write using msr instruction(gic_send_sgi)
doesnt get reordered before the stores to IPI call processing
list(call_single_queue in kernel/smp.c), so that IPI is guaranteed to
be generated after the stores get completed.

CMIIW, Dont we need an isb() in addition to to the wmb() in the below code ?

Thanks.

static void gic_raise_softirq(const struct cpumask *mask, unsigned int irq)
{
int cpu;

if (WARN_ON(irq >= 16))
return;

/*
* Ensure that stores to Normal memory are visible to the
* other CPUs before issuing the IPI.
*/
wmb();

for_each_cpu(cpu, mask) {
u64 cluster_id = MPIDR_TO_SGI_CLUSTER_ID(cpu_logical_map(cpu));
u16 tlist;

tlist = gic_compute_target_list(&cpu, mask, cluster_id);
gic_send_sgi(cluster_id, tlist, irq);
}

/* Force the above writes to ICC_SGI1R_EL1 to be executed */
isb();
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
