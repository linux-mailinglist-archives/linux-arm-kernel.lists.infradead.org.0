Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B2815B353
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulnVjzWjmKJsjDiXbO6mnRj5hDjFUEE+2x+8R1gtGAs=; b=gw1y/BPwUMQiE5
	rYMjCMowE2URHOSmF7ABfys+4qRA6LcoxU8fMK74L8qbyTemoipeBIvFpPpzNzCyLpHTxm+GsX4Zs
	++1B7iF5PLEubus11xt2lLDXxYc36MdQ4OlovShIhJMWQXg4BEddu+btHPVvwMi3vF7fEJVMXV3m6
	HNIncMSIiBMFi8Ei0idaIMG8Hw2c98ge4OlZEURq4oOBgqbnnQXhGUTvHcpRBNLfG/MsJ1f2oDyjQ
	GX6q1PFuCvIlG59LOkL0yi8IPuch2WZJIeQU1jbV7xM3vfzp4/iEnddfDDa1jizsBKsoqgX6CF2M8
	KgXxQB9fdx7we9gtFQRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j206I-0002ia-No; Wed, 12 Feb 2020 22:03:18 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2069-0002hV-ME; Wed, 12 Feb 2020 22:03:10 +0000
Received: by mail-qk1-x743.google.com with SMTP id b7so3697183qkl.7;
 Wed, 12 Feb 2020 14:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=vktZgdwHT9wecNxCGbvMxpCvSL0TwzAxN3Sq+MPR+iE=;
 b=nfgfpDftMtMJpWLxiSSs1X2OYcR9WlCI1amDpodmsLKxPgHkq8bnF4qf1qtxMLl199
 uWMc6cYmIs/jgWcwFKkmA1JHNWG82eW/IKsMlZpt3mUHo1pedk+LHU2F5vGJTvd7qkuE
 fNGTvtRWPXIit3HMzALvF1UOg3gvWURxXh51WA1HcgiQsiQD6P2hroKRk0XCvfHR6Dzc
 dUViLRXSEg/GOVAWO3L349vTzL+TvRhuWrvH/RL4CyOMUBipTQvLtVcjhMg5rGBxSPCP
 gHaie3hPJkpPL/U0oSQ8fkXX54m7zGqVd3HOJjXK3WbYxhlGgnFofw7ctLXn1muu7S9S
 mjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=vktZgdwHT9wecNxCGbvMxpCvSL0TwzAxN3Sq+MPR+iE=;
 b=sKqv1uCFxY6hDTFXr2Kdf7F9OI2+q6gSjQKnAfk1Vc3saTEm3TQT/J7FXE0kwgIxI1
 fJBJBzDwseBo1Mc9K8QkCmYTytLRjd//ehAs1+1lYwlraK/vxqjtzYB2ERj4NtZhmJM1
 8XWJpj1Bk6KCUDW3ngODT9klX5lnWelE4uXY6BX6lhNZyGodSUJ+hFD1fy1mrz4RQSs4
 3LvOOfFUMv1UrJZdhWNhe1+uBzreWe94cZaWquFsSi+3RCARllzHAqLz46+UK9AWJ/hN
 9gy6hn1F7Gghf1cRRHkHkkNOcFqg53Bc1vKKTLL6HYalqCEGnKQyQD0CtrZkKvYkMDwu
 e0XQ==
X-Gm-Message-State: APjAAAVNfb3ARlrdSS+A6ezPkGfcb6H1bQ3j3y84RqHc1ZP/5JagqyN1
 gzgMB8ZpnGiFfqSQCknBdxk=
X-Google-Smtp-Source: APXvYqzT+6mBAxj1e5FLwLyZnqWru8muuUku/e/rxOQlawFETlZgZCjz3d0Bvp6LGi4KM4HKO8a+DA==
X-Received: by 2002:a37:7a83:: with SMTP id v125mr13061546qkc.22.1581544987943; 
 Wed, 12 Feb 2020 14:03:07 -0800 (PST)
Received: from localhost ([2620:10d:c091:500::1:985a])
 by smtp.gmail.com with ESMTPSA id z5sm335513qta.7.2020.02.12.14.03.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 14:03:07 -0800 (PST)
Date: Wed, 12 Feb 2020 17:03:06 -0500
From: Tejun Heo <tj@kernel.org>
To: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
Subject: Re: [PATCH v2 1/3] cgroup: Iterate tasks that did not finish do_exit()
Message-ID: <20200212220306.GH80993@mtj.thefacebook.com>
References: <20200120145635.GA30904@blackbody.suse.cz>
 <20200124114017.8363-1-mkoutny@suse.com>
 <20200124114017.8363-2-mkoutny@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124114017.8363-2-mkoutny@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_140309_751970_1E2821AF 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
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

On Fri, Jan 24, 2020 at 12:40:15PM +0100, Michal Koutn=FD wrote:
> PF_EXITING is set earlier than actual removal from css_set when a task
> is exitting. This can confuse cgroup.procs readers who see no PF_EXITING
> tasks, however, rmdir is checking against css_set membership so it can
> transitionally fail with EBUSY.
> =

> Fix this by listing tasks that weren't unlinked from css_set active
> lists.
> It may happen that other users of the task iterator (without
> CSS_TASK_ITER_PROCS) spot a PF_EXITING task before cgroup_exit(). This
> is equal to the state before commit c03cd7738a83 ("cgroup: Include dying
> leaders with live threads in PROCS iterations") but it may be reviewed
> later.
> =

> Reported-by: Suren Baghdasaryan <surenb@google.com>
> Fixes: c03cd7738a83 ("cgroup: Include dying leaders with live threads in =
PROCS iterations")
> Signed-off-by: Michal Koutn=FD <mkoutny@suse.com>

Applied to cgroup/for-5.6-fixes.

Thanks.

-- =

tejun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
