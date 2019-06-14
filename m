Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F25446853
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 21:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LEP1etl166AkCpfWlmq2pwBOzGxd9tIVrNLexqdJlhU=; b=DOrBNoWjhJWb5Q8tNnDxc6u7e
	GSGkSqMquUXeaNd3NxrN8mfTGXXrsdHXWzgXAPFo1+7cxpumAgEmNE76BfkyeoPpa1dA/GwnaS/C0
	vZhW07HstqpuDjE+xXkRjzOpxoBkjn6/iroLPLtk6E9BDN8CH5YD+dua6LdF3Vl8kb+/flNgWWtBV
	R2eogxueA0BkQdvPPPKR+C/4V6xmePW1KNQHeE6hBWESVFVOg+OCA7I4pyM4CYrcgAGtrZor+Sncg
	tF7eSWmNfTBJL+nj1Me5nGZNsY+BluEu1iL0VEtTwg3vMdoG02omQb3PlBBBTRDYZ816FMv0nJvtr
	kj+IriOVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsD7-00071O-GX; Fri, 14 Jun 2019 19:50:05 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsCq-00070M-Bk; Fri, 14 Jun 2019 19:49:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so3729382wrs.5;
 Fri, 14 Jun 2019 12:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=D2Jp4MrPZCXvvnJ+vcaU1kDqB/bC2o8rRr1g4mxoY8c=;
 b=N12KO4fGu5qQHf19CP2U9aa8h+TxvCB8th+0NnIABtZTumBIdeOBTCCYPAMvjeMlpx
 rUmLFzQq/sB+eKaxXjo0tOzEeX4xfqRvTRC+dPKMYwFvHEmEeK2p0ZHPhMgARjhgMJyH
 Af0XJ88/pGRsPL3A/hYUixk+fm/7il896RiCZTSBbqnTjDFdBIZswPRystF9POHPFkVQ
 KIo56+xt10OJefdYswvEhc3lhZ47C+Bb3jewhE6iMtzB8LIHv68o8N7obWbTuFPTX7kB
 YJQk6WihWvNOtuziFS9j6uwWEeU+MvKWgCvLLa6FKnXrCh/SJQqm56emkdQJNxg7jfHH
 7NSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=D2Jp4MrPZCXvvnJ+vcaU1kDqB/bC2o8rRr1g4mxoY8c=;
 b=pnrIzAJP3DHkWkyrEzC11EcauflAJN3pgjx1q85cmspBWNmAtvndpQvLL1RAwzDjhy
 G3E4jAQ7zxIhwufkPHDmV/ZdVkp67aJDpi48nAqRO5ENdo3zUiIgmlgA0o5jL6a26MEE
 gAsxMw+TDDCwNRK1f7RYtoBt/k0cOoXBLCEQBCZyCsvWfgZloccxAJoTblZobmzJhWjp
 AdAt7nnPxyHSOgo/ZlBqjhycA3wErH8brzf5xvc0iNEkPRG0r8udMrSyOIigEoYx5OrW
 eLFcYOzt+ptIOcv9mRQkDKNGiM+64cVg79+WkgOlELKgbaLCXgXoVmfIHZ87l9PMY8vc
 AdFw==
X-Gm-Message-State: APjAAAVFW1x4G4ut8jAXglVyGGJLesfL5bL0pwv4vfk8j2R8swVomp8h
 RmCkXVeshj4k9vvGbD3tcto=
X-Google-Smtp-Source: APXvYqxm139gzKF9pSB8kIGGWvPhZLZYT0gquBj2ZyqNBxLbS1uj91g9GLI9/T8YtjOA7p+ua6yTHg==
X-Received: by 2002:a5d:5448:: with SMTP id w8mr32445240wrv.180.1560541786773; 
 Fri, 14 Jun 2019 12:49:46 -0700 (PDT)
Received: from X555LD ([2a02:85f:51e:5d00:f1ab:2da6:d378:d0de])
 by smtp.gmail.com with ESMTPSA id o126sm8503912wmo.31.2019.06.14.12.49.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 12:49:46 -0700 (PDT)
Date: Fri, 14 Jun 2019 22:49:43 +0300
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To: Heiko Stuebner <heiko@sntech.de>
Message-Id: <1560541783.1367.3@gmail.com>
In-Reply-To: <4025583.lUYsg5j2zl@phil>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
 <4025583.lUYsg5j2zl@phil>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_124948_405736_821553F7 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> same as with the other patch: I've lost track of what matters,
> so please resend the ones that matter with appropriate
> Tested-by, Reviewed-by tags by involved people.
> 
> Thanks
> Heiko
> 
> 

Understandable, really. haha!
The conversation is ongoing. I'll test this now that that loaded week 
has passed and see if we can reach something better than dropping tx 
offload. This might be it, if it works for more than one device



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
