Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A059D234
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvbDm6nUR7w/+909m2fvYd7Hc8WPQ1IEyiQrIWCp71w=; b=pJJGPN+aTvOf4z
	hoP+2thmsip4qtpngXCsk9OjRrJqbqk7Azas8jrU/HtN0ewemPUoomPTFQnBLdOgBRQJIVej6EcBr
	02emUE689zghRHP+RiR96H0OQRC/JaDXXnAvaYh6xGaTlLUbrRcWAFendTMZOkhMiNUcXVpCgtth9
	VSzLzu+2QslUdtG0ySv3tt+HoZS5ZNsOm7Pe3yCTdRFk4M5jx7XD+Ha04kykDYDAKivtfjkUhvkaV
	43+H0tOTltVSZUGnFT4tpFC//96oKxs2BtD4PElALpOZ2Pfwtgrymhtdl20gaEZhni2Irwe2JqPZz
	Jut82rojPuxLMNpl+V+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2GU2-0002Xz-4T; Mon, 26 Aug 2019 15:00:38 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2GTP-0002It-VO
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:00:01 +0000
Received: by mail-io1-xd44.google.com with SMTP id e20so37906196iob.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 07:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ki2gfeocOUFyztYUjbOsFQksape9FnGjll4dZqr6rCg=;
 b=NScmo3MbHxnQqudynmmBQ+SChKqC6xFr4lYmxKNiVfkElM9wdl83Kb12ELkqsgA1/Q
 23Tx2eeGGZKA8m6Dt4AeSv2lEspzJkFtWGo0oL5mr5iCa7m1vCGCIgMN4YxHVkVhWNn6
 1WZ2CHz2mGS37M+7SLDGOALfnahipEM/dSnFLyHgtdH69u9QCYRDEp8NU/RSOPBP7JaG
 wxHO1OJgT7xX36R/BAmRUHovg3HZSyBHtPL/YgjsOICMXH+NCmS9YHDk3uTLxb4ppBOl
 OHpe3hcyYQ1m7lP3CjNapy3Ujr2z+9IlvbVvkrL8Y7VHBPOfQeCGmuRAYtc3n/AqDDwc
 9TaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ki2gfeocOUFyztYUjbOsFQksape9FnGjll4dZqr6rCg=;
 b=Y7ft9LMSSt9ZffcunEgn2uyTde6iyDyiB1uV7omYohUsz1CMaHTG/ihjRjzciSfblN
 b5X0cLhdJaQOw50EBs/N4pB53fqMEvQzWplCuM/ZbP7Az33yX455y4DNkdHoo1WIosFP
 jTtFmapVaA0fxHXzxfpIvYJxNZfvWqqeCG2EsyE88ZjwJ9n2E3NuG01CKaex4QbSPdgS
 cpg9bZ9PQRv26LLXohCYe8phgOqDmefzw1DZ7YCvvZIvPXP9A23JTYcq+p2gdOr/AsV4
 15ZlM2psTFsjtDzZvbIxzz28qfIPLjK6yWH0AKPtCV/Bmtv5ABd3XnGWANtYr0YkYZ4O
 NYmQ==
X-Gm-Message-State: APjAAAWe0E5/5AZMrTmXcGJDzjEanh7iaSYhDPB9Q9QIs4L+lcwQtms6
 3ci5+3ComZrS4AyklGQ4l7kz6vvrWlEw0kco1iK3kQ==
X-Google-Smtp-Source: APXvYqz2myGSNELFlpgsGdrHu1p0x9MAsRTyFVObH+ENwol+tdu+yz0sL73VsnfquhatrBtVZ7r9Prov3ZFHn65A6jM=
X-Received: by 2002:a5e:c601:: with SMTP id f1mr24223127iok.57.1566831597008; 
 Mon, 26 Aug 2019 07:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190822220915.8876-1-mathieu.poirier@linaro.org>
 <20190824003002.87657-1-yabinc@google.com>
In-Reply-To: <20190824003002.87657-1-yabinc@google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 26 Aug 2019 08:59:46 -0600
Message-ID: <CANLsYkxC-4UZcVKoTQiJ2PsDxwuriFoAwqdbM39EC1G3nwwAHg@mail.gmail.com>
Subject: Re: [PATCH 0/2] coresight: Add barrier packet when moving offset
 forward
To: Yabin Cui <yabinc@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_080000_015012_57656C07 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mike Leach <mike.leach@arm.com>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yabin,

On Fri, 23 Aug 2019 at 18:30, Yabin Cui <yabinc@google.com> wrote:
>
> Thanks for fixing this problem. I didn't realize it because I usually use a
> buffer size >= the default ETR buffer size, which is harder to reproduce the
> problem.
> The patches LGTM, maybe you also want to fix the problem commented by Leo Yan.

I will look into the issue reported by Leo later today.

> I tested the patches by recording etm data with a buffer size smaller than the
> default ETR buffer size. Then I saw barrier packets when decoding with OpenCSD.
> And I could decode successfully without error message.

Can I add your Tested-by ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
