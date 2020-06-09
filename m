Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738F91F3AC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=762TeisCvGsHCXB5tTADrZlxznitDLrVFzGK4ffI4Zo=; b=tWwKya9HFI6/t7
	myanLqj9/1JuW+fV1CJys76G+3eB0xr2JKa+ayjx5gIhamEKD1AJy1flChvgGmaq2rBYRrByLhrR+
	MqnUdaV2hk9MZKL3iBn2JPkB3FJ0fms0m3a7gybFXijx2jH5uTdvL9/xm2Fu1iSvY3pGhAd+Reekb
	DJTGbSwI9HI5QYb7/0TQZsyRYcWvQvsz+XMshPuSQcyCP5IYt307u60QoOZxElx3A3+x/BRc3Rbof
	1RvW30XX+dKwiLNoIW+IwnPxtuyrJSPnMMsj2nT+PLo3XQPwMI9SWJc6DQvDJ8v21bV/VkH36SEqa
	/dGRVvnCA5rJaAbwPwMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidVJ-0003cU-EV; Tue, 09 Jun 2020 12:37:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jidVC-0003c1-2f
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:37:15 +0000
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8C7672083E
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  9 Jun 2020 12:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591706233;
 bh=6hn159fsqZIHh5PutlLrsHY0pDoWlQD6fsjd0lYTSEo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=wozfJ//sOWF296rlskOdPK9stB9oMRMHo56tg7n8yUcSG0IusUqEBuAG3JlCD3RVD
 WVaeKCtNLwbVfeT+s7EngqNkpQmzwATIB/86wrXfeQSiMkVnwT6cZ5T8iKq/B0UQHW
 yb5Fah6DC+sl8jpgfQFeZy/9Wlksu/MkCR0XBlaw=
Received: by mail-oi1-f173.google.com with SMTP id a3so6576987oid.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 05:37:13 -0700 (PDT)
X-Gm-Message-State: AOAM5314ZpROvq871OwIJ6Gq4qZVXzRmHAjTzxntAwFmv+31ybMzrVe5
 DhSJTujWStdQPG+vrXYEj/H3/+1oNO50Frz6uKk=
X-Google-Smtp-Source: ABdhPJy0ly3ETuMrRD3rwgTiXo84h4KT81M8ZkpNfrjPC0CpKq6ZkTnq1W+weFmtnEwWARTqajWJ7zFDb/n3j+vDcY0=
X-Received: by 2002:aca:6144:: with SMTP id v65mr3107434oib.33.1591706232951; 
 Tue, 09 Jun 2020 05:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
 <24c1529e-1c8e-6912-965a-f4b921e09d79@marek.ca>
In-Reply-To: <24c1529e-1c8e-6912-965a-f4b921e09d79@marek.ca>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 9 Jun 2020 14:37:01 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF-eLc0RWmjfUYAk9BJ15-A5FwnPWo0nXoyqFQa3A62Mw@mail.gmail.com>
Message-ID: <CAMj1kXF-eLc0RWmjfUYAk9BJ15-A5FwnPWo0nXoyqFQa3A62Mw@mail.gmail.com>
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
To: Jonathan Marek <jonathan@marek.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_053714_146264_8539FDBE 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jun 2020 at 14:35, Jonathan Marek <jonathan@marek.ca> wrote:
>
> Hi,
>
> Just want to add that this patch also broke booting my arm64 kernel
> (CONFIG_RANDOMIZE_BASE=n). This is on a recent qualcomm board.

Which bootloader does it use?

I take it reverting the patch and enabling
CONFIG_RANDOMIZE_TEXT_OFFSET makes it fail as well?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
