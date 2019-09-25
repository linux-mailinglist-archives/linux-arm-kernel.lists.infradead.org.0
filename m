Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6171BBE162
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 17:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT1/lXg7AtzklUlbiToR1gqQ+D+ErNQeBRIEM3y5Ypw=; b=F087c4w9+osyX6
	JcBo8drePLzY7ID0/p3cfJ0GGT3Vm1jb2tnbJQFsLAiD44QvD/AZPvGV8X4Oww0mQisRLRSaL1KBv
	WRQWYrF7jiwnTU4Nlde4+8Qg3v/JzGo9MQseQFH0jseaLuknoclKptQJ2vpG+hJOV8gBD6mQEDJh+
	VfHaerclt3XAxtmqQ+gQmlT4Ufqq0bBYf9q/MvJZQ6KgtzjfDqJjYPWtSoVjq9xifU0wEI0g1Yusc
	G3uVZ/pd+kRdcoIhb7c1I6qSw6niHr0nSmDzhcUbJIP9JIesLaMEpEIobZZaO5i4Zn6GJ8g3OKxLN
	8m/8JZoTcPQjfXtgYX9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9Ib-0007Bt-9e; Wed, 25 Sep 2019 15:33:49 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9I7-0007Av-A6
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 15:33:20 +0000
Received: by mail-ed1-x541.google.com with SMTP id r16so3471381edq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 08:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xXF8fOz68zu8jSsi2oLIZNjcKNSoQ5Q7ICUWMBhW7DM=;
 b=nFhz4TvKr9xBPUOqvetSHmUbh3EQ9lCExfFxilYXCW6hELd5xrptu0jhKEK25o20EJ
 Gg+aZGbC6Gz3auQyizHzo+v1pDRbzSZjr1eDys1u37dLQaCrZdDdJ7Z0zkaQF6vDrLjU
 Rqvk3/vbAa2BoNNPP5rnqdkP951jp2KtC72hcQN5nt5FnqwwEvmCwCIV1r794Dgcm+sY
 wjeInu9jOq1/8eyq2q4W/yCVWbeCOWtbiByMG+RIeAEvFhOIqJqxZh4I46CGvYENVgsO
 iQ3SXRlCmb9r1A4+GTrR0Wacrn49h/SVnBHVwSV6/h/Sm65vGxPsrAdXBKbChI83A2fx
 tUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xXF8fOz68zu8jSsi2oLIZNjcKNSoQ5Q7ICUWMBhW7DM=;
 b=mIZcCThyxNOMdzFXE5cSXtIzuWa9zV1v7CpT1ye+fBzGgzPQdEzZqduwwJBHeqBzfO
 IFTOK/CRV0gEXgogLrqGiIXxl4jhI1Or9wEBOfjpilcXQaeTZOY1v4ThgQZltnzZU9xZ
 WDtvLK67MAMEuQsUuLEDU7hVaBrNBDHtsVlEhVkNB+IAz0iixHHjLkadNqWfzcdwolqR
 TQQ5LWB5amhvit8Jo0kHg3jG4rhpvr6BI/Dbx6gvFuN6CsHiFU+G4DEMxYxNTwbaDKMO
 CJLT8tE07jqQQWm8lMv9sKdMZ5AOXtWlt4hLWerOGdGDrbFkgKgpCQlFa3LgLviAwXRx
 akfw==
X-Gm-Message-State: APjAAAXkgItMV24dCeh857XHtVqiQjddVyQ/T8kvOAhEiK3btjAfYpSG
 u7kTFrKr3sHRcQY9PvzkhR9SX/YLqj0kHe2IW2sSRQ==
X-Google-Smtp-Source: APXvYqxX489cqrkLHt3Qn91y6+7hXWDB8tLdECyqKNPDtfNZ49G/iag+TIVI/SOqZQbaXZn2k9NWW+dNMN7NIGCwum8=
X-Received: by 2002:a05:6402:1ade:: with SMTP id
 ba30mr3673543edb.304.1569425596583; 
 Wed, 25 Sep 2019 08:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
 <20190923203427.294286-2-pasha.tatashin@soleen.com>
 <20190925060445.GA30921@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190925060445.GA30921@dhcp-128-65.nay.redhat.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 25 Sep 2019 11:33:05 -0400
Message-ID: <CA+CK2bBscWKpQ43jjzaN33wHm5m7W8ZGiW7YCTE+Syzu2ZunoQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/17] kexec: quiet down kexec reboot
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_083319_762142_89070B68 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
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

> Acked-by: Dave Young <dyoung@redhat.com>

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
