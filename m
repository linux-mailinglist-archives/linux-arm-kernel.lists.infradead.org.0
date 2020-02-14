Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB45A15D5FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv5jLBTTdTACmYb0NiBa20R/8B8SpqRkNruU5Iu3uiI=; b=Bw9p8npjBD1fZP
	fc+Gh+NI88ch0RNLdCdfFLJNCdtUTygHkK9ddofZba7qCgi5up1C7pCKHucKnWw5I/xKL4pzx/VOh
	yLAYxa6/3RZekh9ugvE/Ko5vPdEJEiF3XLwzfYtrfL+ZsY4ExepJCo72M/J1kiL04Pa/tI7AsGLqU
	LRXc1rcrW7CID6JQcK7TgUqxFrU4dTyeGRCcnP6CTLYmbVf0zPcKTF2e4rWGdwFt8iQ7t0ARnfFzw
	vLztk45JL6vQAXSraRA5RDCDYQP7lRBjkptNpK5dnV8Os+7XzdV2Alf/18J4uyL5xvRBCPHID4dc3
	ewKHcwKkYqtQS8QddUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YUk-0002kk-G1; Fri, 14 Feb 2020 10:46:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YUU-0002kD-O3
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:46:35 +0000
Received: by mail-lj1-x242.google.com with SMTP id x14so10161212ljd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NeXjnE7r2g7NW/QZCMY8eogb8019UjNBERpksRztscA=;
 b=RyOIgCO9rwzLHRMzkzF15r94Gm7EFLx/l5Ek2m+SmkOaLf8KCd29ymRKiQHGtHzMO+
 SjWc4wnVuhLkn/tE6g+Z/HhOMKZurtEWt1CLOk97/vkVcPe0PeaE8DgE5s5IrYdeMT/y
 4hTSz3PGbn6yUUAsH+FyMtrWL23Hz3EuJc1ud4MtkQakJp19MzGQOs0kLLLPD8HQOccQ
 us9qWmU2bw2Km1qQjblxOgi5536a0XSIlPNm0UjAmRHkmSb8wdZixYiJuS9Sfl9qLRJK
 idQFhEdYShZ8OgDA0e++q6hokttEToCeomtqf8+akpiJmuT4T/6x2heIyQ5WvMHpum7B
 xFYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NeXjnE7r2g7NW/QZCMY8eogb8019UjNBERpksRztscA=;
 b=Am3ncC68KmZH9ej+C1RFkN0/piYqCXF31luDH0VpQJ5Dt7ZHCMLGMEq+Aj8MRZ3ALA
 26SBfRlTwq8FhNp1r9RFpj/ncXQAJCZooie/G+bHoVEJ6mjMNEirq/YAynMgnSt0nvp1
 mORHw60q4ItFcY1fG6MjgPlKFo5qrXAVG3okyi/3/YIxVax8v7vZqYsP3ExD+nIKcF4J
 +5AwYNERlRfu77/SaclMDK96JRr7G5myQgHJGZBL23Jt6tZRjA9X5nzjvmktVYrWvGZA
 Lua17fQtL3WyBI1hgYwzraXENYsNINMO9tw4oUTkATqcknnOJ2zt5KBnAn8kLmMCujR9
 kXiA==
X-Gm-Message-State: APjAAAUETk5mPmWze4w59Ztp4Sk20CHJXkmum4ohHhfQ8EeccSWPG7zY
 bWMa/TxwDlkja2Hf9SUl/4Hr4mSUPHcXpW4sZeUNrw==
X-Google-Smtp-Source: APXvYqzmdLdE8Rx/NNo5kXSwKXXl3RzcxUAwmAthly7FtdF/BpafqywcjF0AbGsPfO06POTuomc507bYl1nJS4URe7E=
X-Received: by 2002:a05:651c:1bb:: with SMTP id
 c27mr1767553ljn.277.1581677193251; 
 Fri, 14 Feb 2020 02:46:33 -0800 (PST)
MIME-Version: 1.0
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
 <1580148908-4863-2-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1580148908-4863-2-git-send-email-stefan.wahren@i2se.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:46:21 +0100
Message-ID: <CACRpkdbcJwmVkT5kcR-ga3ejT4n8wbKPDJhFs_3Jp0-ZLKEWzQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/4] pinctrl: bcm2835: Drop unused define
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_024634_790184_B897A9AA 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 7:15 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:

> There is no usage for this define, so drop it.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
