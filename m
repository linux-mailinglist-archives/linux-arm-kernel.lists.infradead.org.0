Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F481340D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 21:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJkWQ2x9BKnMoMQq5alqLCOeN+0Oqb54gP/ax2zSRUg=; b=gEumdB1b+Ft7Ta
	t3EVMXEgNqb0+AH/m9mIYAK130raOFmGAB2M4kjknwjtVGDOKJtXHCm1oyZtflMyjGog1Jo4C/sYl
	q2Co4XE1Wn92KJrhnangYTGXtruT6P5I1lnsTZ+teCTqpveLR51tiZ2qrGBdHhM+1F9Pm9icrRnPC
	5BHzbzI/pT9aT9cA5URKO3tx7zocqj2/f9vL32ND9VIGnxcQUFtCwAsX80vim/LM3VlQHMQsfwyxm
	MEJX7jSJGPqbWIJzPsDzgWGFAY7ddWQMVnQnBHYgsVVhEEKc5NUPGoPl5xyzAdCF7Nip9zUIjqLL3
	mfeCbEiyKrlvpRC5Izxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdzf-0006vr-JH; Fri, 03 May 2019 19:37:15 +0000
Received: from smtpsalv.cc.upv.es ([158.42.249.11] helo=smtpsalv.upv.es)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdzW-0006uj-D5
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 19:37:09 +0000
Received: from smtpx.upv.es (smtpxv.cc.upv.es [158.42.249.46])
 by smtpsalv.upv.es (8.14.7/8.14.7) with ESMTP id x43Ja9hd011468
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 3 May 2019 21:36:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upv.es; s=default;
 t=1556912171; bh=5QRfcW/S26RayDBbj5AufsZRA6MXaNEaawE4b/38+5Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=OW/b0RYHVdHKrai4eS1q3mhOth6oNrOjhCxhbT6kZqLs++ZCv0hZKq/ZQUPVSzqjT
 cGJzORcuSTb5UX0olBuLU2VOFjXLn39/BSP7IP/UD6u427u/EkbMGgLvwvM/KDmLvw
 DUt9AR7xSgpSYZ2U3gc+JZ7UBjbFYUyVEoAKYzVIacNreJBsuo0bSZgR5MxnHedlBg
 SJ7GX+UH4JjzK4v6Hg+7RIZk3R/qmFR1D/QknRXxXW4IxzbbOaTkZsRgmvYh2l8kjl
 G4gzGMJrsKXAOTZ+cRTuq6yZBX8AU1SFQIgJuM06H3MI52IIUf/tutmYISXmgNlrJl
 RllpcZGMo2Zjg==
Received: from smtp.upv.es (smtpv.cc.upv.es [158.42.249.16])
 by smtpx.upv.es (8.14.7/8.14.7) with ESMTP id x43Ja9AM010205;
 Fri, 3 May 2019 21:36:09 +0200
Received: from [146.191.50.5] ([146.191.50.5]) (authenticated bits=0)
 by smtp.upv.es (8.14.7/8.14.7) with ESMTP id x43Ja41u025849
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT); 
 Fri, 3 May 2019 21:36:05 +0200
Subject: Re: [PATCH v2] binfmt_elf: Update READ_IMPLIES_EXEC logic for modern
 CPUs
To: Kees Cook <keescook@chromium.org>
References: <20190424203408.GA11386@beast> <20190425054242.GA7816@gmail.com>
 <CAGXu5jKWQtmt+tN9rwdCWP=7pL6GYU4DmDW4R7ViQV8r1m1J=g@mail.gmail.com>
From: Hector Marco-Gisbert <hecmargi@upv.es>
Openpgp: preference=signencrypt
Autocrypt: addr=hecmargi@upv.es; prefer-encrypt=mutual; keydata=
 xsFNBFcGUeQBEAC/HNTuqHA7Pg8RwB0e6UyxYUPlQ23n7MbCTwwWN3RgV3vGR5xHc+kGTOoT
 d2orVAHu+XCU5q5I+aY/g3m12dufhk5J5xn9WyyLcDCILleVYpEiatXBg/ne+5OaqfSh1QnY
 4HiEn243Z26PjlvRQ+mOBJmLF8RUU4vMxFA+zNqkfK71pO/g/KPvxYEQHFHFizhO72Aqw1NM
 VEB/X6LpHHdyYNsIpdvCDAhUk+3VgJjrqCWOPFisCjUsYJDMucQHmiAjS3oHW6nEd6l5AZC/
 Ld9VBObM5Gc2eUZHpxx1EQdqr9GxN5qb7+/dvX3U4W4riL7q84RvBQO017vdZdfUynWZIlVE
 xuo20iC4lOvIZODq2N4q0BCpOrlmt0eESfeCV7M6wZX3HqQa2q1K9r+lLMUPmJW7ucNfVmhr
 l0LS/6UjjwlIB+xJ/S9P4xlJxz3cr9CIOHAdfhBVU6L4Fgsuhs/XFzo0eSwekpnouwr0QzA3
 oM8TznLTXJlmHfBVtKeMTa1BdOSVqK2F4jW5cpnk6n0ehVUbt66Ip+3te69P9wLECNwnJYt4
 m4mqOWlOtDSkMDyt4/IaAwQKugtOUQZglXWYi70DvQfyYh6V5LTLi25gUVWFRqGK77INMyXX
 jeAscR6ihjcj/yLfZCHJEvnDXXPg8nvppTwxXe34OuBt06Dw5QARAQABzShIZWN0b3IgTWFy
 Y28gR2lzYmVydCA8aG1hcmNvQGhtYXJjby5vcmc+wsGYBBMBAgBCAhsDBgsJCAcDAgYVCAIJ
 CgsEFgIDAQIeAQIXgAIZARYhBMss1Yq6kt7nxJP1UPjdiC0+ZMlGBQJcpIGEBQkLQcogAAoJ
 EPjdiC0+ZMlGRIgQAIW7dmZlbrHPHCcZ0yYT9IuNFWmrzEDQirAoUlGBEXnVzlB2t8mkm35/
 hcuzE/IYH2N74mnumBAGSBFuag3cin1ewOJZ3kCD50e1xJOaIPwB4CTBHlrfs4Wi1WOv4ze6
 xf8SM5Hu7kh2t/X3V+yHV2IYAVsMUTqdV1JdLEu8o+R5RJwpI6HywIeCglYkmJ1yxUGwPvxF
 +XT5WK//c0/5xJJTenVDAE1g9yEbEbq3AzA+pRmguWY8/jy3pK1u1m2pUM/e2SKpQy9/NVJu
 8W5/AJB2L2EWCChYxggWrjRS7bLiiX8cO63h6MfM/RK9jqFKmqlcqpVNJn68lQ8jSUPBOFgb
 migB6q0Me0lbQx9agdNaB36Vbybu4tbAA4Mxiwl2x4q7FAM0uA3vvJn3c6fQLL0v4pVV7Rmp
 pXivtsgEHnQ2dSy5/7KjmHnP2oIN+smOqjRa1lgR1UHKnQ73a5RbPjGUt22wFeP6QHPSF8DB
 TK911w/wt9Wp509ZRVk32pkuNgmKwps/qdSSdimHE8FfgpCa8wSXWt4gxTyqKkYf15fIjU3h
 DX7AOOCB9jkvqGMgQ983j6zSaIWesKvy+K3GY2WihPpxqoQTJtoLm179wPPGwOLcbn3oy96d
 2k0YLtGy2UeMy0xZxuljer8gztAOnxqD7SD7jWbkL6+d+H3vuRzDzsFNBFcGUeQBEAD4aCKF
 ReCiDzuOUCbpxKZX2vUlz5eso9uJv5T0v4xyMesBxb8UC3keUyvj0RoKvfQlT+aqDpVr7lmM
 OsBzgNrQVbET9OTj0TEwJ3yi4yDvlfi8k9AoN/mrSwa30ZjKp4lO2lSX2zwRyVjW2WM4YWkD
 saN0DB7M8keWxsU2InLGT4T4QWV2OT94RkJ8Cw9QIjq3wk6Q1VZw5k7We8WwTgXYEjTdlJAw
 8JuC8o9RtNOeOFvqym1rjuvr1DlX+KwAbAUmnlG8BHGtOPxDZ/ngSBTiL4dC0MMDvRQSpWZA
 pq8Bc3j09hIozIdJ4Xri1RbNANInkc6wYdRLIUlyWzzcef+HSWTzCuAHhPNiuhGYqSiG/LVz
 vBlHefSQKyHhORTukfgwrq8b2LumBDSOpGJLr2Ez5R2cm1+vu9fWJHrJHUQAM0/KcPPoX1jt
 ygoJ0QCcJzdxk6RL4iWzYppJ8xdDXTz/H11Aipjtk7Vrr6l+voSJZepPRqC/+ScIXJvuM/qp
 Lu4NkK4FsT2HSmfW/AKGzL4oY+ybnH9Yz/FKj7GjMwXcIkoYX0X8cdMpsnpkRW0OJfYHEdHP
 oZRpmMosMl5HWLHd/uSALgxVEDRyw/lrJmJ1DHSiDOZpWroHeC8bAUb4d0WsX/zwyFzwQSmp
 EmB9VwHrWKaEuEVGTgDYBaChJ9RxjwARAQABwsFlBBgBAgAPBQJXBlHkAhsMBQkFo5qAAAoJ
 EPjdiC0+ZMlG8MAP/i4pMdgkJaojpBkKbPYZx0ZPJnCnW7P91kLV0IxVm3/w2QJo/yVB/C6F
 pzVz3ww0J0mmO/mW5ANrkGYM6QIpSJ1rSpssBnDwwNgdXlNRuLEAxjHIQfrjG1qHNMStKSa/
 1s3w+ljr+y2018a70Yl2BF0icdhaZPXCNx2VOwPoCd4gywgYeS52hNXbeVtqRGG8qKAabrtj
 8n0ieriMDdT49EAdRPXIYCsyyfoj+YetMKJR3QRfEPu7Z46eqjcHO8gdM0cjaScEgp0SPoNn
 o/87b2494r7NeC6ZRxz4ho38IzDIin/+qLLWlCLIygQIcif/byB0A2YndJjOVm5sfffWCGaP
 xUuOd3i1EHYB6mlswOmz8R1Eo6ADBLzDrymHaLA12qUzbRXyYrbkj8hN+tnMtyidI2JMbHeN
 2+7p22Am/plSDUxQrt2df2QvpqAyU4MpJ67GmPmOuLIKHGhKZ6gNg2NxEoKn2OTJGrWRCIKt
 jxTjCGSfk+bI/JVt4VLXUINgrDG6HiLH6rvqjJwgoU36RYPBqA1tj40LnjWOoPbT0chgp5R1
 1IsG6l2XmpSqkiMgvn6aoJGPt8G/NMPaoPfkYnmChWLpGeA0VwbEicQI8tE7deI7QkpdodDB
 05dYqdqwfx4yYJsuRcP+DF/TvwRiRvB/RuAuAiAsdJKYQ0IDdGvowsF8BBgBAgAmAhsMFiEE
 yyzVirqS3ufEk/VQ+N2ILT5kyUYFAlykgakFCQtBykUACgkQ+N2ILT5kyUbAOxAAsHt/j4ho
 GPaNV9Oc8dP5c/I8OVmo88KGWkmQzqwzieXiiDqgyILCk9/11ydulE143d4sfQ28oPLLfKJ8
 Bqu0pGWGkTbk70KmfjKeMoTMhrqldsLJ20k3HM2mnQVSmWprZP0UDnHZ6abCitO3R/bVjS5l
 CK2nXjkd7W74p7+RF+uss42rZFE6whfz8C45G1Xiv2G6A0VYKQMXKKxc5rZmClLt6ZDVpRdp
 4zByAnAtGNBuhnZ3+TAvZiM4PRyL2z8JkgqMj3Uaw7qzC+FetdUE21Lc7GwFFuTNSAQe9c4/
 beJ6VYnEIE4uG+S8bZk/wvPY+3epGzg9ouQy/uzYaxqXDUF6P5ur6VCesnWKyRmAkDFOcRM8
 P7ehyAqmvv3AXzNTmW+a1/6Mn1MsZXaheFd2sywHatHYAr4K4t1huz+NMwT4Lh18R+izLgKd
 nWlciP//J2xlfl3BRbRMUfBDFN7UbYKjU262HOiPdeuKtvfYmTMHOx6+/yHDkUbsHyPp+gGe
 KOVrHvw3sa7qrJ2wPLy36Midql6bhLaR2Xl48fh8VRboQOM2MnQEA0Ouz/I8Ogs4vFqCa3aP
 1Pax+9N9RFbMBkxafb5t0kaqJut56M18ZtcxHWFr07Qwys+oV5r5SCTsiJC98Ir1CZSINSQr
 TiPGNW+rbprIn1ATeK/5p+yIJ7s=
Message-ID: <d68f3836-ea36-dd07-773d-bb42e032ddcf@upv.es>
Date: Fri, 3 May 2019 20:36:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGXu5jKWQtmt+tN9rwdCWP=7pL6GYU4DmDW4R7ViQV8r1m1J=g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_123706_891299_E7C577CA 
X-CRM114-Status: GOOD (  38.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Peter Zijlstra <a.p.zijlstra@chello.nl>, Arnd Bergmann <arnd@arndb.de>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Catalin Marinas <catalin.marinas@arm.com>, X86 ML <x86@kernel.org>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Andy Lutomirski <luto@amacapital.net>, Jason Gunthorpe <jgg@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Kees, all,

Sorry for the delayed response, I haven't had time to see this until now.



On 25/04/2019 17:51, Kees Cook wrote:
> On Wed, Apr 24, 2019 at 10:42 PM Ingo Molnar <mingo@kernel.org> wrote:
>> Just to make clear, is the change from the old behavior, in essence:
>>
>>
>>                CPU: | lacks NX  | has NX, ia32     | has NX, x86_64   |
>>   ELF:              |           |                  |                  |
>>   ------------------------------|------------------|------------------|
>>   missing GNU_STACK | exec-all  | exec-all         | exec-none        |
>> - GNU_STACK == RWX  | exec-all  | exec-all         | exec-all         |
>> + GNU_STACK == RWX  | exec-all  | exec-stack       | exec-stack       |
>>   GNU_STACK == RW   | exec-all  | exec-none        | exec-none        |
>> [...]
>>    'exec-all'  : all user mappings are executable
> For extreme clarity, this should be:
>
> 'exec-all' : all PROT_READ user mappings are executable, except when
> backed by files on a noexec-filesystem.
>
>>    'exec-none' : only PROT_EXEC user mappings are executable
>>    'exec-stack': only the stack and PROT_EXEC user mappings are executable
> Thanks for helping clarify this. I spent last evening trying to figure
> out a better way to explain/illustrate this series; my prior patch
> combines too many things into a single change. One thing I noticed is
> the "lacks NX" column is wrong: for "lack NX", our current state is
> "don't care". If we _add_ RIE for the "lacks NX" case unconditionally,
> we may cause unexpected problems[1]. More on this below...
>
> But yes, your above diff for "has NX" is roughly correct. I'll walk
> through each piece I'm thinking about. Here is the current state:
>
>                CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
>   ELF:              |            |                  |                |
>   -------------------------------|------------------|----------------|
>   missing GNU_STACK | exec-all   | exec-all         | exec-all       |
>   GNU_STACK == RWX  | exec-all   | exec-all         | exec-all       |
>   GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
>
> *this column has no architecture effect: NX markings are ignored by
> hardware, but may have behavioral effects when "wants X" collides with
> "cannot be X" constraints in memory permission flags, as in [1].
>
>
> I want to make three changes, listed in increasing risk levels.
>
> First, I want to split "missing GNU_STACK" and "GNU_STACK == RWX",
> which is currently causing expected behavior for driver mmap
> regions[1], etc:
>
>                CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
>   ELF:              |            |                  |                |
>   -------------------------------|------------------|----------------|
>   missing GNU_STACK | exec-all   | exec-all         | exec-all       |
> - GNU_STACK == RWX  | exec-all   | exec-all         | exec-all       |
> + GNU_STACK == RWX  | exec-stack | exec-stack       | exec-stack     |
>   GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
>
> AFAICT, this has the least risk. I'm not aware of any situation where
> GNU_STACK==RWX is supposed to mean MORE than that. As Jann researched,
> even thread stacks will be treated correctly[2]. The risk would be
> discovering some use-case where a program was executing memory that it
> had not explicitly marked as executable. For ELFs marked with
> GNU_STACK, this seems unlikely (I hope).

I agree that "missing GNU_STACK" is not the same than GNU_STACK==RWX and 
this should be handled differently. There is a clear security benefit
if we don't assume that GNU_STACK==RWX means more than that.

My initial patch intended to prevent that on modern 64-bit programs where
explicitly marked executable stack, they are forced to have the 
READ_IMPLIES_EXEC state when no such thing is needed.

The read-implies-exec could be used via personality, so, such unlikely 
applications executing memory that it had not explicit marked as executable, 
could just use the READ_IMPLIES_EXEC personality, right? 

Adding a flag to prevent the core mm to call the driver with VM_EXEC can prevent [1].
So, I'm completely fine the "first" change.


>
>
> Second, I want to split the behavior of "missing GNU_STACK" between
> ia32 and x86_64. The reasonable(?) default for x86_64 memory is for it
> to be NX. For the very rare x86_64 systems that do not have NX, this
> shouldn't change anything because they still fall into the "don't
> care" column. It would look like this:
>
>                CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
>   ELF:              |            |                  |                |
>   -------------------------------|------------------|----------------|
> - missing GNU_STACK | exec-all   | exec-all         | exec-all       |
> + missing GNU_STACK | exec-all  | exec-all         | exec-none      |
>   GNU_STACK == RWX  | exec-stack | exec-stack       | exec-stack     |
>   GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
>
> This carries some risk that there are ancient x86_64 binaries that
> still behave like their even more ancient ia32 counterparts, and
> expect to be able to execute any memory. I would _hope_ this is rare,
> but I have no way to actually know if things like this exist in the
> real world.

This "second" change only affects "missing GNU_STACK" programs. So both, the
benefits and the risks are only for ancient applications. So, this is not a bid
deal, I would go for apply this "second" change. Maybe I'm missing something,
but why we can't use personalities for x86_64 ancient binaries that expect to
execute any memory? Again, we can add a flag to prevent the core mm to call the
driver with VM_EXEC.


>
>
> Third, I want to have the "lacks NX" column actually reflect reality.
> Right now on such a system, memory permissions will show "not
> executable" but there is actually no architectural checking for these
> permissions. I think the true nature of such a system should be
> reflected in the reported permissions. It would look like this:
>
>                CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
>   ELF:              |            |                  |                |
>   -------------------------------|------------------|----------------|
>   missing GNU_STACK | exec-all   | exec-all         | exec-none      |
> - GNU_STACK == RWX  | exec-stack | exec-stack       | exec-stack     |
> - GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
> + GNU_STACK == RWX  | exec-all   | exec-stack       | exec-stack     |
> + GNU_STACK == RW   | exec-all   | exec-none        | exec-none      |
>
> This carries the largest risk because it effectively enables
> READ_IMPLIES_EXEC on all processes for such systems. I worry this
> might trip as-yet-unseen problems like in [1], for only cosmetic
> improvements.

Also as you pointed out, if there are backed files on a nonexec-filesystems,
then should we remove the "x" to reflect reality? 

If we want to reflect reality, then there are other things we are missing.
For example on i386, a write-only memory region can be read. So, if we
have a "write-only" memory region, should we expect "rw-" in systems with NX
and "rwx" in systems that lacks NX? There are probably others situations I'm
not considering here.

I'm not sure about the unseen issues that doing this can introduce but if
we want to reflect reality, why we shouldn't do the same for others 
permissions? I am not sure that it worth to it just for cosmetic reasons.


>
> My intention was to split up the series and likely not even bother
> with the third change, since it feels like too high a risk to me. What
> do you think?
>
>> In particular, what is the policy for write-only and exec-only mappings,
>> what does read-implies-exec do for them?
> First it manifests here, which is used for stack and brk:
>
> #define VM_DATA_DEFAULT_FLAGS \
>         (((current->personality & READ_IMPLIES_EXEC) ? VM_EXEC : 0 ) | \
>          VM_READ | VM_WRITE | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
>
> above is used in do_brk_flags(), and is picked up by
> VM_STACK_DEFAULT_FLAGS, visible in VM_STACK_FLAGS for
> setup_arg_pages()'s stack creation.
>
> READ_IMPLIES_EXEC itself is checked directly in mmap, with noexec
> checks that also clear VM_MAYEXEC:
>
>         if ((prot & PROT_READ) && (current->personality & READ_IMPLIES_EXEC))
>                 if (!(file && path_noexec(&file->f_path)))
>                         prot |= PROT_EXEC;
> ...
>                         if (path_noexec(&file->f_path)) {
>                                 if (vm_flags & VM_EXEC)
>                                         return -EPERM;
>                                 vm_flags &= ~VM_MAYEXEC;
>
> The above is where we discussed adding some kind of check for device
> driver memory mapping in [1] (or getting distros to mount /dev noexec,
> which seems to break other things...), but I'd rather just fix
> READ_IMPLIES_EXEC.
>
> Write-only would ignore READ_IMPLIES_EXEC, but mprotect() rechecks it
> if PROT_READ gets added later:
>
>         const bool rier = (current->personality & READ_IMPLIES_EXEC) &&
>                                 (prot & PROT_READ);
> ...
>                 /* Does the application expect PROT_READ to imply PROT_EXEC */
>                 if (rier && (vma->vm_flags & VM_MAYEXEC))
>                         prot |= PROT_EXEC;
>
>> Also, it would be nice to define it precisely what 'stack' means in this
>> context: it's only the ELF loader defined process stack - other stacks
>> such as any thread stacks, signal stacks or alt-stacks depend on the C
>> library - or does the kernel policy extend there too?
> Correct: this is only the ELF loader stack. Thread stacks are (and
> always have been) on their own. But as Jann found in [2], they should
> be unchanged by anything here.
>
>> I.e. it would be nice to clarify all this, because it's still rather
>> confusing and ambiguous right now.
> Agreed. I've been trying to pick it apart too, hopefully this helps.
>
> -Kees
>
> [1] https://lkml.kernel.org/r/20190418055759.GA3155@mellanox.com
> [2] https://lore.kernel.org/patchwork/patch/464875/
>

Anyway, thank you for handling this, I would like also to see this fixed.

Hector.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
