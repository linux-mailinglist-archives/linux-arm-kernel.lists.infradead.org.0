Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13A2FD736
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhQXjb9nStdahOU0PGuyj4ErNkpR/w7Gu5FwQqTvZ/E=; b=HmU9OJpSZ1O2B/
	+N9XauigrFhm0m3wjYOfyQmqoqcZWkBku7W7ZsGegu8KaQgqkqWFMcr1YJc9PjF4ayhK5kThLdsjp
	L7F3ksdsDRA8L1FikztO3gXjPmJkH53Zsfuh/P4W0q0zDkJZ+5Z+3KzQQ8q0NqdaEyuBp4m7Vt4Xp
	ZA6RQb9wUYg2577Y11/lIr9jmYPim3tlIokMePMe7kRR7PgX/6QDp8VeDRLBTFjc4bWdNmFvyU2tz
	GK/ptvlCdCBzGHG+vlhy5lydWswY/hzdhuFyrIMg9ho+XIX8yZb2VHn2st5jrZDP8wnOFDJYQG4ve
	CnkYZJeODJoO10ubS80A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWHK-0000IN-Ff; Fri, 15 Nov 2019 07:44:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWHB-0000HQ-85
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:44:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id t5so9635414ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 23:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MerzeYQd7mMrWj7xug82ip0Zzuk57QC86rO5mCSsEzs=;
 b=cimPOY7g4EAlwVyfr4cwpdgRJdBwRgLjtx/sUwL01IBFA4qPtm6hLBgyIKILrFzJM9
 xiOtbLJf0y4FyFS5wuHNxaB4q8sFK2F7P67/5/RQWCsQ9oGFBnDTdc4D+B26iZzap9Qa
 gTUwq1Rz9t3IIvqDWNeazaS9zPcEWsGD6g1ZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MerzeYQd7mMrWj7xug82ip0Zzuk57QC86rO5mCSsEzs=;
 b=Sy5hWcmzeoeusf2xv14jX1rNfu+0GAK8G6cdXHCUvDbnKLgvQAzigV6OBXTaYkHHpx
 H1NsJxiPMbtiL+Hi6ERUurlRK8brHivcFsj3/y3/abkissf/liiDlLlxzTc8eZ2hTmSp
 XKA588wDjxRPysucKojpHSr2RpGmnIhhq4eNs5Y6Xjl08ecOXAta0W4FJ5cFAxX+2Ht6
 dbT36bnD45Nzbxs4iNFG2eZ/ZsV7vsmB28qsxQz2WaxVsMQB0OIEfN6ixVXJkG1NDCXq
 dlUIYbrf2TccdfLdmAm/N6Zlgc3Njw0OFEgu7m4HDmGASwc29Mn8eOYkVen6vUBoVJId
 zTLw==
X-Gm-Message-State: APjAAAWv0uv0joxRa8eQaHFOXWGGNt2KpA/6FXpnDL61gt7Pc1W11qUM
 1FpeLb4u52GkSgfjmNCWrhhb2A==
X-Google-Smtp-Source: APXvYqw8OAiLBu508szXHtSnz3QQioa3U2uijYFbTHFzEtm/A+7bHMI6CgvxmnwrGknlwyb2z4HUYw==
X-Received: by 2002:a2e:9784:: with SMTP id y4mr10091304lji.77.1573803854082; 
 Thu, 14 Nov 2019 23:44:14 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id p19sm3689755lji.65.2019.11.14.23.44.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 23:44:13 -0800 (PST)
Subject: Re: [PATCH v4 45/47] net/wan/fsl_ucc_hdlc: reject muram offsets above
 64K
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-46-linux@rasmusvillemoes.dk>
 <CAOZdJXUibQ6RM8O4CfkYBdGsg+LMcE2ZoZEQ4txn2yvquUWwCA@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <79101f00-e3ff-9dd0-7a05-760f8be1ff69@rasmusvillemoes.dk>
Date: Fri, 15 Nov 2019 08:44:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOZdJXUibQ6RM8O4CfkYBdGsg+LMcE2ZoZEQ4txn2yvquUWwCA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_234417_438106_0E0A9A8F 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/11/2019 05.41, Timur Tabi wrote:
> On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> 
>> diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
>> index 8d13586bb774..f029eaa7cfc0 100644
>> --- a/drivers/net/wan/fsl_ucc_hdlc.c
>> +++ b/drivers/net/wan/fsl_ucc_hdlc.c
>> @@ -245,6 +245,11 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
>>                 ret = -ENOMEM;
>>                 goto free_riptr;
>>         }
>> +       if (riptr != (u16)riptr || tiptr != (u16)tiptr) {
> 
> "riptr/tiptr > U16_MAX" is clearer.
> 

I can change it, sure, but it's a matter of taste. To me the above asks
"does the value change when it is truncated to a u16" which makes
perfect sense when the value is next used with iowrite16be(). Using a
comparison to U16_MAX takes more brain cycles for me, because I have to
think whether it should be > or >=, and are there some
signedness/integer promotion business interfering with that test.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
