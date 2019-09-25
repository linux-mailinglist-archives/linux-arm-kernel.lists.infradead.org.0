Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5A7BE165
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 17:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vT1/lXg7AtzklUlbiToR1gqQ+D+ErNQeBRIEM3y5Ypw=; b=csaEx9SB3YFwv8
	yr32B5dHtx9EDDI8og5RphIpfkdINGDWoCBOlV91NQVTwjNBshLU5J+yc0apghdK0+hZ1WBYZFQFp
	83KlfTyT3zZaeHZCHfMfNcmvYXEdFmA5ElZuu4WAG8OaD/S+44+nGZk83jOGItTlFAPFkmc9wXOb7
	cP9iOjq2F+AGJrA9x49V7robTy9LG6GlxDLN14pEBvRDwZ89LR3YhNK0JHhlC5lnR28JqrkypREV5
	Y2OdQm8cKFQSXdK6xNeoJoOTqRYQzeGaEUcBDn6LUjL6qG0pmmwnHh5tg8vo3Bmdk4CZ7jnLyzrNX
	Lm2QxC6hyn0Uo+Yj6cJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9J5-0007Oj-GV; Wed, 25 Sep 2019 15:34:19 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9IM-0007Ew-Kh
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 15:33:36 +0000
Received: by mail-ed1-x542.google.com with SMTP id c4so3523734edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 08:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xXF8fOz68zu8jSsi2oLIZNjcKNSoQ5Q7ICUWMBhW7DM=;
 b=KXOcnmAsWS7K5fEokrmP6H6YvWriFRE43bTxIzPEcqbKvG3i6jP0yrnKae9CayrOhi
 OgnfAzse2GCck6ihKQ7DiJ7/vLOQj94ZveFNjE4frgxVKGQFgofEJoOKQBdbKKfaHxoo
 9CwuReM6ZALL4+5Dq+YY/QQkeAQPNsZcrsnHWIlG8Zt9Omv48XePZvcZWdWlrt2MmpMo
 zSQVkgcrK/e5W6qb3z176HRO6DsOrQvb6HtQA2ik2ojmaZixvYMsfSWPZO5fEQc0Knll
 +Lgq3/kv0tXMsD1PgbyombFdVFAR3CD+7sPL1tMWb/L6rvIC/AYrdPChjVCGn9AB7Vz6
 JeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xXF8fOz68zu8jSsi2oLIZNjcKNSoQ5Q7ICUWMBhW7DM=;
 b=pZIPnecyKvEDzJIbO/HgCsq/GjTahoqnuBMfKvz4rKC8NfZPau2C0Ec/abmlFhefTW
 3rnx7NFU38xMrJnytEVM4RYyserBqE6/XWTTu3KNmnoGInnUzULH4vgUOhX5qIBGqgRX
 IrIdQbq/QO/NFvLF6462yt2Qzc05gAO/wSUupFBp9CForwKW92XSZDl1ZK/mIgJdWYs9
 nhW33VOT5xSe15XlrzS+nd6GM2Tyk4VBcjArsbNQe5Di6T5iuQWPTljO/JzZNDyk0ikc
 8lEcLXftp5Pr56F/U8sIW6Xpg+ohUY/jRtUkTIRdpys+SYGnl0EJt6cRAQdK+rZp4p+l
 x3sQ==
X-Gm-Message-State: APjAAAUvyAeUhaZ0QHsBkWMG0PToHCDB0M98IUCnSWkvjGmtfw8l+5L5
 0VEd/yxNXgfiqVEcPJj5XJrxgzYVPvAD6RGXgrOwg44PTso=
X-Google-Smtp-Source: APXvYqyGv4FmC6yYf2LhgfcVajwLZ02PBJ7HwqmwJN05DKTE16YVRBPpXj+65ZSYdB/rcZEXAdp1TmOk3mAGX4b5NdM=
X-Received: by 2002:a17:906:1c05:: with SMTP id
 k5mr4793502ejg.286.1569425613175; 
 Wed, 25 Sep 2019 08:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
 <20190923203427.294286-14-pasha.tatashin@soleen.com>
 <20190925060533.GB30921@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190925060533.GB30921@dhcp-128-65.nay.redhat.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 25 Sep 2019 11:33:22 -0400
Message-ID: <CA+CK2bCqFwC8hADny5svR=Jj7=js05gXV=Rz1L7ZTfEDmBBRBA@mail.gmail.com>
Subject: Re: [PATCH v5 13/17] kexec: add machine_kexec_post_load()
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_083335_707198_D44950FE 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
