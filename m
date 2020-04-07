Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C5C1A170B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 22:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N3p8iuI89VdTeG18aoLOlWBPJZ6gGTeUVAEV2WwTtGY=; b=K6Nh71jpg8nR7h
	6xamEqRr/b5bpe5/e/NSQ67QSv8D5HgYUKiODkK4IkqGdVCZQa+RGjx/uAkZklElyqMHvUkbo7+9p
	SyvJMxbFP9Sx1TCO5JCdKyIM3at1zpR41kipOxpcfzY10LL0JJhFvUn1B4l+wSARXuILDkXAwNaoj
	I2CQaFz+qjLILP2piBDclLd1UQTd39oXP3xrqptHkhF6n+8/r5N/nSiw8WQY9BKE2jINXLk65G6z2
	56pYU/vehPdnouchZOONe05zq3ucwx3eKhNfbAliuK8iYUz8Mh/45xrytY0tFqDzCCPEWZiAIjSFc
	a+QWNoedTMw2nOt+v+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvE8-0006HD-EN; Tue, 07 Apr 2020 20:53:44 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvE2-0006GN-0g
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 20:53:39 +0000
Received: by mail-ed1-x541.google.com with SMTP id i16so5773269edy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 13:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=myQk/sjv6zBGFDJhL4e4qTg8rLN0wTqYT2hxFaIaO3M=;
 b=nsIyTHRXSmxk8BskdV8i0Z6E/tMnqJF+sax8RNyMoe9l4LxTJXgdeUtZvcl7ixAYq0
 I/TaZfhbNT7cHUd4o5egjFLXNh3JF0+EHzwuM1ugGmK0JTxYVmryghWr3rZncCcacI15
 waL/zVb2LqbJUa2GDicBUflHEBbp59ooN/+u/G16agfrTkZZOpRhykebZ/pJHVlsdX/4
 fJSHaaO+1XQb7LERmC/GIsS3en5eu8PEW9vXt/eom+dAM3neB5vYP6BUCXsff0yrGX8u
 ZXv1leFia6S1PF+OF5hLZ9mdUVTlVmW38K5lLfpDgDECbZPvRWX4R/gQulBwaY9nurma
 u9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=myQk/sjv6zBGFDJhL4e4qTg8rLN0wTqYT2hxFaIaO3M=;
 b=uLLLgq8k+idaIpnSGU2B33okDLsGh46mWfg4vvZJ4y1v+jNAQUB2YsGo6ke++5yZ3L
 iDSmFva6O6CfGPEIbqxA5Ic0joOVgtO4dZzD/UcBJ+9y5BncYb7wb6aZQJAKWsFDAVfs
 b8GBh2Tnfo7b02qZYzY5SJKA05aOG4Naph0+iSYjYSd3x7ME4Z1MvXgd25esSaPJgpJf
 4wDX1J+XZE7nobF8FIFMz/OJkGGwzKjh4RKIg31qLPkeJXSHLsLM4hQ+tVwFKIYUAKfK
 9Q9xM73upwGbNdijuAcyiD0dt5TAOhL2FYE8OVobq5tbwbvZrO1KfCBuvNq/g7YNzOMz
 j9LA==
X-Gm-Message-State: AGi0PubajOYa/6M+8pqT7kluK/1aG6BDH8XqYk8U8XzIHVKbnOOKMtuu
 zi5F98bU6hcTCPmd59ZQo6usU+BeR2kYtX8jsPgXNA==
X-Google-Smtp-Source: APiQypLouHfKT9ZosJHUfT44s4F8yhXEBlnL8q86G5xh/k4YbQ16kZmKsGL+7JTYU2OCt/CH75dg5t2SzLPNTTjwZzI=
X-Received: by 2002:a17:906:160f:: with SMTP id
 m15mr3656302ejd.367.1586292813065; 
 Tue, 07 Apr 2020 13:53:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:80d5:0:0:0:0 with HTTP; Tue, 7 Apr 2020 13:53:32
 -0700 (PDT)
From: Fatemah Aaban <haeinjung101@gmail.com>
Date: Tue, 7 Apr 2020 20:53:32 +0000
Message-ID: <CAHk_o+04hrR4u5GCFkELy+dtiN_mFRnjS8OXRWOwwgNxeXeCmw@mail.gmail.com>
Subject: can we talk
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_135338_082867_4FCA8FA9 
X-CRM114-Status: UNSURE (   2.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haeinjung101[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [haeinjung101[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: fatemahaaban@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

My name is Fatemah Aaban, I would like to establish mutual contact with
you for a friendship purpose

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
