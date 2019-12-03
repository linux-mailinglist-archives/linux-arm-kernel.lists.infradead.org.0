Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE344110489
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLngyYNNlEiPPusuP93/zDLTGkpU/LuySEqZhEo6mhk=; b=VW17SH7FGCIWs9
	2ZyNbxQqDU2nlcX0In7/UVphfA5/wQJwVmYp7E7z7/zWzL20GKWAxjk1PF2H2fJwe3jCM761iL05g
	nZ4bpWmviZ4Jg74emkMVtfO1BLdXNKkR0RThrUj0OWoQq5wvG5JT/91L2dBFMy6xxoTCzuNaBK8g2
	UXCF8e7not7UlPvkn8+ZY7gWSKpR8Z/GlvEnJ424LaQwgavoQgcF575Aq+J3SK0Mzqa3bpKCDo0SU
	5HO/uQ5aBIbPOyr+/X+NyCKNhgy/eVCJO1/L0PRZMhLARAhl8a0hGgNiSBBckz6Z0RS3ewwHUUC1T
	Pg8AfDEAOhVxNt2BQdGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDIJ-0003n3-1K; Tue, 03 Dec 2019 18:53:07 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDI4-0003je-7P
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:52:53 +0000
Received: by mail-ot1-x343.google.com with SMTP id k14so3913794otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 10:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YkhAW1JPr4wZMcoCAUkgxrDKX3tQPoTOxDYTCkC3waU=;
 b=Hjdnznllgz669BoJ6LQ0C+l+dL6PlscmUgAL1xpsNv/OaGjyoqdX7VSxhCQuBQ578j
 I8wBqlCTN8W3TPwmh0VjoFP16rkUV57cnrlQ6rmTM3FC8LnYDp2RFyJCeImcGS3luMQN
 5Pu14bEsp34hPT3kI0X555jj6yLIjO+w1v93OC6r6xrBW6ZD0k5NQJhT9WmTZxjzia0F
 xClTWg5I6rE0qu76U55V/jhhlQzMFDFm+p/rNQMM3r8N24Nil2ykHLCSojd3IJ5Ir3sz
 dSEbTT62wRkRO+leUKlpqJzb4pO7s+PblAW2no7YvZUBRXlG7NyK1Q/T7Jb3QsuPGAk4
 BXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YkhAW1JPr4wZMcoCAUkgxrDKX3tQPoTOxDYTCkC3waU=;
 b=SUFjAVRY1CgR3t0CtFD0jQaVlkNo4W2kkqSYh3YdxwVelnbcfX7gBR08/7mVQi4rI9
 CM7adxNLQUMC2HoqogfeVfP/Fs66ZrrRkc0TnIiV8kD2uqxs683Xwyimp6B+rsFhYG81
 Bi4aXz4LxcWqhpVD+chQXUPRCrE/q6cUxRHRZL7kRgyR9hwlcJ6E1kB8gMETIBRHCnem
 ZETMRMS7PNdfZxvwkBahMQOCxK05qaWVF2JMWTwdGeXYjB3MIiUBVqMmnp8b/tLnTo8d
 X1ClKWC2l9rFokYJJLYMw5JLVz2U6NRcIA3aHYoIlp0BwUY/89p8u94sDu9ZRtgAiSpy
 BpGg==
X-Gm-Message-State: APjAAAUZXCrJ4QU/s3wCdNPwhLgADfl/rDoiqOfLasw1akaqPVQrK6T1
 qbkQKnoyXjPWSdvtMANt74UA6ebPhuXo0G/yKFHZlw==
X-Google-Smtp-Source: APXvYqzs7Nq2HrpEsJ4z5tKrIRIy0SlwXh4gQuwIAJKfRwUoQoon8oTcC/R8n/ASFFf8Ve6Wlkan1uzWdKSQKA9MBuI=
X-Received: by 2002:a9d:3af:: with SMTP id f44mr4158036otf.332.1575399171204; 
 Tue, 03 Dec 2019 10:52:51 -0800 (PST)
MIME-Version: 1.0
References: <20191203121013.9280-1-will@kernel.org>
 <CALAqxLWbswQmLYJa_ODUDC0XJ5u=y_Nn074qcVAh1HZiTLNy1Q@mail.gmail.com>
In-Reply-To: <CALAqxLWbswQmLYJa_ODUDC0XJ5u=y_Nn074qcVAh1HZiTLNy1Q@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 3 Dec 2019 10:52:40 -0800
Message-ID: <CALAqxLUupqjxqWVs+Ei0QkOAWmQt7CEq-3LQsq3mzW9dFNDzhg@mail.gmail.com>
Subject: Re: [PATCH] arm64: mm: Fix initialisation of DMA zones on non-NUMA
 systems
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_105252_274868_F288979F 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 10:47 AM John Stultz <john.stultz@linaro.org> wrote:
>
> On Tue, Dec 3, 2019 at 4:10 AM Will Deacon <will@kernel.org> wrote:
> >
> > John reports that the recently merged commit 1a8e1cef7603 ("arm64: use
> > both ZONE_DMA and ZONE_DMA32") breaks the boot on his DB845C board:
>
> I've also tripped on the same issue with the original HiKey board, and
> can validate that this patch resolves the issue there.
>
> Tested-by: John Stultz <john.stultz@linaro.org>

Also validated on db845c.
Thanks so much for the quick fix!
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
